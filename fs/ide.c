/*
 * operations on IDE disk.
 */

#include "serv.h"
#include <drivers/dev_disk.h>
#include <lib.h>
#include <mmu.h>

// Overview:
//  read data from IDE disk. First issue a read request through
//  disk register and then copy data from disk buffer
//  (512 bytes, a sector) to destination array.
//
// Parameters:
//  diskno: disk number.
//  secno: start sector number.
//  dst: destination for data read from IDE disk.
//  nsecs: the number of sectors to read.
//
// Post-Condition:
//  Panic if any error occurs. (you may want to use 'panic_on')
//
// Hint: Use syscalls to access device registers and buffers.
// Hint: Use the physical address and offsets defined in 'include/drivers/dev_disk.h':
//  'DEV_DISK_ADDRESS', 'DEV_DISK_ID', 'DEV_DISK_OFFSET', 'DEV_DISK_OPERATION_READ',
//  'DEV_DISK_START_OPERATION', 'DEV_DISK_STATUS', 'DEV_DISK_BUFFER'
int map[40];
int writble[40];
int write_cnt[40];
void ssd_init(){
	int i=0;
	for(i=0;i<=31;i++){
		map[i]=-1;
		writble[i]=1;
		write_cnt[i]=0;		
	}
}
int ssd_read(u_int logic_no, void *dst){
	if(map[logic_no]==-1){
		return -1;
	}
	debugf("map:%d\n",map[logic_no]);
	ide_read(0,map[logic_no],dst,1);
	return 0;
}
void ssd_write(u_int logic_no, void *src){
	int cnt=100000;
	int goal=0;
	if(map[logic_no]!=-1){
		ssd_erase(logic_no);
	}
	for(int i=0;i<=31;i++){
		if(writble[i]==1&&write_cnt[i]<cnt){
			goal=i;
			cnt=write_cnt[i];
		}
	}
	if(cnt>=5){
		int cnt0=100000;
		int goal0=0;
		for(int i=0;i<=31;i++){
			if(writble[i]==0&&write_cnt[i]<cnt0){
				goal0=i;
				cnt0=write_cnt[i];
			}
		}
		char buf[512];
		ide_read(0,goal0,buf,1);
		ide_write(0,goal,buf,1);
		writble[goal]=0;
		for(int i=0;i<=31;i++){
			if(map[i]==goal0){
				map[i]=goal;
				break;
			}
		}
		memset(buf,0,512);
		ide_write(0,goal0,buf,1);
		write_cnt[goal0]++;
		writble[goal0]=1;
		goal=goal0;
	}
	ide_write(0,goal,src,1);
	writble[goal]=0;
	map[logic_no]=goal;
}
void ssd_erase(u_int logic_no){
	if(map[logic_no]==-1){
		return;
	}
	char buf[512];
	memset(buf,0,512);
	ide_write(0,map[logic_no],buf,1);
	write_cnt[map[logic_no]]++;
	writble[map[logic_no]]=1;
	map[logic_no]=-1;
}
void ide_read(u_int diskno, u_int secno, void *dst, u_int nsecs) {
	u_int begin = secno * BY2SECT;
	u_int end = begin + nsecs * BY2SECT;
	u_int rw=DEV_DISK_OPERATION_READ;
	u_int curoff;
	u_int diskreturn;
	for (u_int off = 0; begin + off < end; off += BY2SECT) {
		uint32_t temp = diskno;
		curoff=begin+off;
		/* Exercise 5.3: Your code here. (1/2) */
		if(syscall_write_dev(&temp,DEV_DISK_ADDRESS+DEV_DISK_ID,4)!=0){
			user_panic("write disk id error");
		}
		if(syscall_write_dev(&curoff,DEV_DISK_ADDRESS+DEV_DISK_OFFSET,4)!=0){
			user_panic("write disk offset error");
		}
		if(syscall_write_dev(&rw,DEV_DISK_ADDRESS+DEV_DISK_START_OPERATION,4)!=0){
			user_panic("write disk start operation error");
		}
		if(syscall_read_dev(&diskreturn,DEV_DISK_ADDRESS+DEV_DISK_STATUS,4)!=0){
			user_panic("read disk status error");
		}
		if(diskreturn==0){
			user_panic("read failed\n");
		}
		if(syscall_read_dev(dst+off,DEV_DISK_ADDRESS+DEV_DISK_BUFFER,BY2SECT)!=0){
			user_panic("read disk content error");
		}
	}
}

// Overview:
//  write data to IDE disk.
//
// Parameters:
//  diskno: disk number.
//  secno: start sector number.
//  src: the source data to write into IDE disk.
//  nsecs: the number of sectors to write.
//
// Post-Condition:
//  Panic if any error occurs.
//
// Hint: Use syscalls to access device registers and buffers.
// Hint: Use the physical address and offsets defined in 'include/drivers/dev_disk.h':
//  'DEV_DISK_ADDRESS', 'DEV_DISK_ID', 'DEV_DISK_OFFSET', 'DEV_DISK_BUFFER',
//  'DEV_DISK_OPERATION_WRITE', 'DEV_DISK_START_OPERATION', 'DEV_DISK_STATUS'
void ide_write(u_int diskno, u_int secno, void *src, u_int nsecs) {
	u_int begin = secno * BY2SECT;
	u_int end = begin + nsecs * BY2SECT;
	u_int rw=DEV_DISK_OPERATION_WRITE;
	u_int curoff;
	u_int diskreturn;
	for (u_int off = 0; begin + off < end; off += BY2SECT) {
		uint32_t temp = diskno;
		/* Exercise 5.3: Your code here. (2/2) */
		curoff=begin+off;
		if(syscall_write_dev(&temp,DEV_DISK_ADDRESS+DEV_DISK_ID,4)!=0){
			user_panic("write disk id error");
		}
		if(syscall_write_dev(&curoff,DEV_DISK_ADDRESS+DEV_DISK_OFFSET,4)!=0){
			user_panic("write disk offset error");
		}
		if(syscall_write_dev(src+off,DEV_DISK_ADDRESS+DEV_DISK_BUFFER,BY2SECT)!=0){
			user_panic("write disk content error");
		}
		if(syscall_write_dev(&rw,DEV_DISK_ADDRESS+DEV_DISK_START_OPERATION,4)!=0){
			user_panic("write disk start operation error");
		}
		if(syscall_read_dev(&diskreturn,DEV_DISK_ADDRESS+DEV_DISK_STATUS,4)!=0){
			user_panic("read disk status error");
		}
		if(diskreturn==0){
			user_panic("write failed\n");
		}
	}
}
