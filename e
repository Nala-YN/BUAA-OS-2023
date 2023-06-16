for d in * tools/readelf user/* tests/*; do
if [ -f $d/Makefile ]; then
make --directory=$d clean
fi
done
rm -rf *.o *~ target include/generated
find . -name '*.objdump' -exec rm {} ';'
make[1]: 进入目录“/home/git/21373161/fs”
rm -rf *~ *.o *.b.c *.b *.x
make[1]: 离开目录“/home/git/21373161/fs”
make[1]: 进入目录“/home/git/21373161/init”
rm -rf *.o *~
make[1]: 离开目录“/home/git/21373161/init”
make[1]: 进入目录“/home/git/21373161/kern”
rm -rf *~ *.o
make[1]: 离开目录“/home/git/21373161/kern”
make[1]: 进入目录“/home/git/21373161/lib”
rm -rf *~ *.o
make[1]: 离开目录“/home/git/21373161/lib”
make[1]: 进入目录“/home/git/21373161/tools”
rm -rf bintoc fsformat
make[1]: 离开目录“/home/git/21373161/tools”
make[1]: 进入目录“/home/git/21373161/user”
rm -rf *~ *.o *.b.c *.x *.b lib/*.o
make[1]: 离开目录“/home/git/21373161/user”
make[1]: 进入目录“/home/git/21373161/tools/readelf”
rm -f *.o readelf hello
make[1]: 离开目录“/home/git/21373161/tools/readelf”
make[1]: 进入目录“/home/git/21373161/user/bare”
rm -rf *.o *~ *.x *.b *.b.c
make[1]: 离开目录“/home/git/21373161/user/bare”
make[1]: 进入目录“/home/git/21373161/tests/lab3_2”
rm -rf *.o *~ *.x *.b *.b.c init.c
make[1]: 离开目录“/home/git/21373161/tests/lab3_2”
make[1]: 进入目录“/home/git/21373161/tests/lab3_3”
rm -rf *.o *~ *.x *.b *.b.c
make[1]: 离开目录“/home/git/21373161/tests/lab3_3”
make[1]: 进入目录“/home/git/21373161/tests/lab3_4”
rm -rf *.o *~ *.x *.b *.b.c
make[1]: 离开目录“/home/git/21373161/tests/lab3_4”
make[1]: 进入目录“/home/git/21373161/tests/lab4_2”
rm -rf *.o *~ *.x *.b *.b.c
make[1]: 离开目录“/home/git/21373161/tests/lab4_2”
make[1]: 进入目录“/home/git/21373161/tests/lab4_3”
rm -rf *.o *~ *.x *.b *.b.c
make[1]: 离开目录“/home/git/21373161/tests/lab4_3”
make[1]: 进入目录“/home/git/21373161/tests/lab4_4”
rm -rf *.o *~ *.x *.b *.b.c
make[1]: 离开目录“/home/git/21373161/tests/lab4_4”
make[1]: 进入目录“/home/git/21373161/tests/lab4_5”
rm -rf *.o *~ *.x *.b *.b.c
make[1]: 离开目录“/home/git/21373161/tests/lab4_5”
make[1]: 进入目录“/home/git/21373161/tests/lab4_6”
rm -rf *.o *~ *.x *.b *.b.c
make[1]: 离开目录“/home/git/21373161/tests/lab4_6”
make[1]: 进入目录“/home/git/21373161/tests/lab4_7”
rm -rf *.o *~ *.x *.b *.b.c
make[1]: 离开目录“/home/git/21373161/tests/lab4_7”
make[1]: 进入目录“/home/git/21373161/tests/lab5_1”
rm -rf *.o *~ *.x *.b *.b.c
make[1]: 离开目录“/home/git/21373161/tests/lab5_1”
make[1]: 进入目录“/home/git/21373161/tests/lab5_2”
rm -rf *.o *~ *.x *.b *.b.c
make[1]: 离开目录“/home/git/21373161/tests/lab5_2”
make[1]: 进入目录“/home/git/21373161/tests/lab5_3”
rm -rf *.o *~ *.x *.b *.b.c
make[1]: 离开目录“/home/git/21373161/tests/lab5_3”
make[1]: 进入目录“/home/git/21373161/tests/lab5_4”
rm -rf *.o *~ *.x *.b *.b.c
make[1]: 离开目录“/home/git/21373161/tests/lab5_4”
make[1]: 进入目录“/home/git/21373161/tests/lab5_5”
rm -rf *.o *~ *.x *.b *.b.c
make[1]: 离开目录“/home/git/21373161/tests/lab5_5”
make[1]: 进入目录“/home/git/21373161/tests/lab6_1”
rm -rf *.o *~ *.x *.b *.b.c
make[1]: 离开目录“/home/git/21373161/tests/lab6_1”
make all
make[1]: 进入目录“/home/git/21373161”
CC="cc" CFLAGS="--std=gnu99 -O2 -Wall" make --directory=tools
make[2]: 进入目录“/home/git/21373161/tools”
cc --std=gnu99 -O2 -Wall -o bintoc bintoc.c
cc --std=gnu99 -O2 -Wall -o fsformat fsformat.c
make[2]: 离开目录“/home/git/21373161/tools”
make --directory=lib
make[2]: 进入目录“/home/git/21373161/lib”
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include/ -c -o elfloader.o elfloader.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include/ -c -o print.o print.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include/ -c -o string.o string.c
make[2]: 离开目录“/home/git/21373161/lib”
mkdir -p include/generated
tools/init-gen /user_icode /fs_serv
make --directory=init
make[2]: 进入目录“/home/git/21373161/init”
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include/ -c start.S
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include/ -c init.c
make[2]: 离开目录“/home/git/21373161/init”
make --directory=kern
make[2]: 进入目录“/home/git/21373161/kern”
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include/ -c -o console.o console.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include/ -c -o printk.o printk.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include/ -c -o panic.o panic.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include/ -c -o pmap.o pmap.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include/ -c -o tlb_asm.o tlb_asm.S
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include/ -c -o tlbex.o tlbex.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include/ -c -o env.o env.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include/ -c -o env_asm.o env_asm.S
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include/ -c -o sched.o sched.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include/ -c -o entry.o entry.S
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include/ -c -o genex.o genex.S
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include/ -c -o kclock.o kclock.S
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include/ -c -o traps.o traps.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include/ -c -o syscall_all.o syscall_all.c
make[2]: 离开目录“/home/git/21373161/kern”
make --directory=user/bare
make[2]: 进入目录“/home/git/21373161/user/bare”
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../../include -c -o loop.o loop.S
mips-linux-gnu-ld -o loop.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ../user.lds loop.o
../../tools/bintoc -f loop.b -o loop.b.c -p user_bare
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -c -o loop.x loop.b.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../../include -c -o overflow.o overflow.S
mips-linux-gnu-ld -o overflow.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ../user.lds overflow.o
../../tools/bintoc -f overflow.b -o overflow.b.c -p user_bare
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -c -o overflow.x overflow.b.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../../include -c -o put_a.o put_a.c
mips-linux-gnu-ld -o put_a.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ../user.lds put_a.o
../../tools/bintoc -f put_a.b -o put_a.b.c -p user_bare
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -c -o put_a.x put_a.b.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../../include -c -o put_b.o put_b.c
mips-linux-gnu-ld -o put_b.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ../user.lds put_b.o
../../tools/bintoc -f put_b.b -o put_b.b.c -p user_bare
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -c -o put_b.x put_b.b.c
rm loop.o overflow.o put_b.o put_a.o
make[2]: 离开目录“/home/git/21373161/user/bare”
make --directory=user
make[2]: 进入目录“/home/git/21373161/user”
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o lib/entry.o lib/entry.S
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o lib/syscall_wrap.o lib/syscall_wrap.S
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o lib/debugf.o lib/debugf.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o lib/libos.o lib/libos.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o lib/fork.o lib/fork.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o lib/syscall_lib.o lib/syscall_lib.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o lib/ipc.o lib/ipc.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o lib/fd.o lib/fd.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o lib/pageref.o lib/pageref.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o lib/file.o lib/file.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o lib/fsipc.o lib/fsipc.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o lib/console.o lib/console.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o lib/fprintf.o lib/fprintf.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o lib/wait.o lib/wait.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o lib/spawn.o lib/spawn.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o lib/pipe.o lib/pipe.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o tltest.o tltest.c
mips-linux-gnu-ld -o tltest.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ./user.lds tltest.o lib/entry.o lib/syscall_wrap.o lib/debugf.o lib/libos.o lib/fork.o lib/syscall_lib.o lib/ipc.o lib/fd.o lib/pageref.o lib/file.o lib/fsipc.o lib/console.o lib/fprintf.o lib/wait.o lib/spawn.o lib/pipe.o ../lib/elfloader.o ../lib/print.o ../lib/string.o
../tools/bintoc -f tltest.b -o tltest.b.c -p user
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -c -o tltest.x tltest.b.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o fktest.o fktest.c
mips-linux-gnu-ld -o fktest.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ./user.lds fktest.o lib/entry.o lib/syscall_wrap.o lib/debugf.o lib/libos.o lib/fork.o lib/syscall_lib.o lib/ipc.o lib/fd.o lib/pageref.o lib/file.o lib/fsipc.o lib/console.o lib/fprintf.o lib/wait.o lib/spawn.o lib/pipe.o ../lib/elfloader.o ../lib/print.o ../lib/string.o
../tools/bintoc -f fktest.b -o fktest.b.c -p user
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -c -o fktest.x fktest.b.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o pingpong.o pingpong.c
mips-linux-gnu-ld -o pingpong.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ./user.lds pingpong.o lib/entry.o lib/syscall_wrap.o lib/debugf.o lib/libos.o lib/fork.o lib/syscall_lib.o lib/ipc.o lib/fd.o lib/pageref.o lib/file.o lib/fsipc.o lib/console.o lib/fprintf.o lib/wait.o lib/spawn.o lib/pipe.o ../lib/elfloader.o ../lib/print.o ../lib/string.o
../tools/bintoc -f pingpong.b -o pingpong.b.c -p user
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -c -o pingpong.x pingpong.b.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o devtst.o devtst.c
mips-linux-gnu-ld -o devtst.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ./user.lds devtst.o lib/entry.o lib/syscall_wrap.o lib/debugf.o lib/libos.o lib/fork.o lib/syscall_lib.o lib/ipc.o lib/fd.o lib/pageref.o lib/file.o lib/fsipc.o lib/console.o lib/fprintf.o lib/wait.o lib/spawn.o lib/pipe.o ../lib/elfloader.o ../lib/print.o ../lib/string.o
../tools/bintoc -f devtst.b -o devtst.b.c -p user
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -c -o devtst.x devtst.b.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o fstest.o fstest.c
mips-linux-gnu-ld -o fstest.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ./user.lds fstest.o lib/entry.o lib/syscall_wrap.o lib/debugf.o lib/libos.o lib/fork.o lib/syscall_lib.o lib/ipc.o lib/fd.o lib/pageref.o lib/file.o lib/fsipc.o lib/console.o lib/fprintf.o lib/wait.o lib/spawn.o lib/pipe.o ../lib/elfloader.o ../lib/print.o ../lib/string.o
../tools/bintoc -f fstest.b -o fstest.b.c -p user
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -c -o fstest.x fstest.b.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o icode.o icode.c
mips-linux-gnu-ld -o icode.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ./user.lds icode.o lib/entry.o lib/syscall_wrap.o lib/debugf.o lib/libos.o lib/fork.o lib/syscall_lib.o lib/ipc.o lib/fd.o lib/pageref.o lib/file.o lib/fsipc.o lib/console.o lib/fprintf.o lib/wait.o lib/spawn.o lib/pipe.o ../lib/elfloader.o ../lib/print.o ../lib/string.o
../tools/bintoc -f icode.b -o icode.b.c -p user
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -c -o icode.x icode.b.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o testpipe.o testpipe.c
mips-linux-gnu-ld -o testpipe.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ./user.lds testpipe.o lib/entry.o lib/syscall_wrap.o lib/debugf.o lib/libos.o lib/fork.o lib/syscall_lib.o lib/ipc.o lib/fd.o lib/pageref.o lib/file.o lib/fsipc.o lib/console.o lib/fprintf.o lib/wait.o lib/spawn.o lib/pipe.o ../lib/elfloader.o ../lib/print.o ../lib/string.o
../tools/bintoc -f testpipe.b -o testpipe.b.c -p user
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -c -o testpipe.x testpipe.b.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o testpiperace.o testpiperace.c
mips-linux-gnu-ld -o testpiperace.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ./user.lds testpiperace.o lib/entry.o lib/syscall_wrap.o lib/debugf.o lib/libos.o lib/fork.o lib/syscall_lib.o lib/ipc.o lib/fd.o lib/pageref.o lib/file.o lib/fsipc.o lib/console.o lib/fprintf.o lib/wait.o lib/spawn.o lib/pipe.o ../lib/elfloader.o ../lib/print.o ../lib/string.o
../tools/bintoc -f testpiperace.b -o testpiperace.b.c -p user
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -c -o testpiperace.x testpiperace.b.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o testptelibrary.o testptelibrary.c
mips-linux-gnu-ld -o testptelibrary.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ./user.lds testptelibrary.o lib/entry.o lib/syscall_wrap.o lib/debugf.o lib/libos.o lib/fork.o lib/syscall_lib.o lib/ipc.o lib/fd.o lib/pageref.o lib/file.o lib/fsipc.o lib/console.o lib/fprintf.o lib/wait.o lib/spawn.o lib/pipe.o ../lib/elfloader.o ../lib/print.o ../lib/string.o
../tools/bintoc -f testptelibrary.b -o testptelibrary.b.c -p user
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -c -o testptelibrary.x testptelibrary.b.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o num.o num.c
mips-linux-gnu-ld -o num.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ./user.lds num.o lib/entry.o lib/syscall_wrap.o lib/debugf.o lib/libos.o lib/fork.o lib/syscall_lib.o lib/ipc.o lib/fd.o lib/pageref.o lib/file.o lib/fsipc.o lib/console.o lib/fprintf.o lib/wait.o lib/spawn.o lib/pipe.o ../lib/elfloader.o ../lib/print.o ../lib/string.o
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o echo.o echo.c
mips-linux-gnu-ld -o echo.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ./user.lds echo.o lib/entry.o lib/syscall_wrap.o lib/debugf.o lib/libos.o lib/fork.o lib/syscall_lib.o lib/ipc.o lib/fd.o lib/pageref.o lib/file.o lib/fsipc.o lib/console.o lib/fprintf.o lib/wait.o lib/spawn.o lib/pipe.o ../lib/elfloader.o ../lib/print.o ../lib/string.o
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o halt.o halt.c
mips-linux-gnu-ld -o halt.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ./user.lds halt.o lib/entry.o lib/syscall_wrap.o lib/debugf.o lib/libos.o lib/fork.o lib/syscall_lib.o lib/ipc.o lib/fd.o lib/pageref.o lib/file.o lib/fsipc.o lib/console.o lib/fprintf.o lib/wait.o lib/spawn.o lib/pipe.o ../lib/elfloader.o ../lib/print.o ../lib/string.o
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o ls.o ls.c
mips-linux-gnu-ld -o ls.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ./user.lds ls.o lib/entry.o lib/syscall_wrap.o lib/debugf.o lib/libos.o lib/fork.o lib/syscall_lib.o lib/ipc.o lib/fd.o lib/pageref.o lib/file.o lib/fsipc.o lib/console.o lib/fprintf.o lib/wait.o lib/spawn.o lib/pipe.o ../lib/elfloader.o ../lib/print.o ../lib/string.o
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o sh.o sh.c
mips-linux-gnu-ld -o sh.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ./user.lds sh.o lib/entry.o lib/syscall_wrap.o lib/debugf.o lib/libos.o lib/fork.o lib/syscall_lib.o lib/ipc.o lib/fd.o lib/pageref.o lib/file.o lib/fsipc.o lib/console.o lib/fprintf.o lib/wait.o lib/spawn.o lib/pipe.o ../lib/elfloader.o ../lib/print.o ../lib/string.o
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o cat.o cat.c
mips-linux-gnu-ld -o cat.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ./user.lds cat.o lib/entry.o lib/syscall_wrap.o lib/debugf.o lib/libos.o lib/fork.o lib/syscall_lib.o lib/ipc.o lib/fd.o lib/pageref.o lib/file.o lib/fsipc.o lib/console.o lib/fprintf.o lib/wait.o lib/spawn.o lib/pipe.o ../lib/elfloader.o ../lib/print.o ../lib/string.o
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o tree.o tree.c
mips-linux-gnu-ld -o tree.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ./user.lds tree.o lib/entry.o lib/syscall_wrap.o lib/debugf.o lib/libos.o lib/fork.o lib/syscall_lib.o lib/ipc.o lib/fd.o lib/pageref.o lib/file.o lib/fsipc.o lib/console.o lib/fprintf.o lib/wait.o lib/spawn.o lib/pipe.o ../lib/elfloader.o ../lib/print.o ../lib/string.o
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o run.o run.c
mips-linux-gnu-ld -o run.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ./user.lds run.o lib/entry.o lib/syscall_wrap.o lib/debugf.o lib/libos.o lib/fork.o lib/syscall_lib.o lib/ipc.o lib/fd.o lib/pageref.o lib/file.o lib/fsipc.o lib/console.o lib/fprintf.o lib/wait.o lib/spawn.o lib/pipe.o ../lib/elfloader.o ../lib/print.o ../lib/string.o
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o history.o history.c
mips-linux-gnu-ld -o history.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ./user.lds history.o lib/entry.o lib/syscall_wrap.o lib/debugf.o lib/libos.o lib/fork.o lib/syscall_lib.o lib/ipc.o lib/fd.o lib/pageref.o lib/file.o lib/fsipc.o lib/console.o lib/fprintf.o lib/wait.o lib/spawn.o lib/pipe.o ../lib/elfloader.o ../lib/print.o ../lib/string.o
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o mkdir.o mkdir.c
mips-linux-gnu-ld -o mkdir.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ./user.lds mkdir.o lib/entry.o lib/syscall_wrap.o lib/debugf.o lib/libos.o lib/fork.o lib/syscall_lib.o lib/ipc.o lib/fd.o lib/pageref.o lib/file.o lib/fsipc.o lib/console.o lib/fprintf.o lib/wait.o lib/spawn.o lib/pipe.o ../lib/elfloader.o ../lib/print.o ../lib/string.o
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o touch.o touch.c
mips-linux-gnu-ld -o touch.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ./user.lds touch.o lib/entry.o lib/syscall_wrap.o lib/debugf.o lib/libos.o lib/fork.o lib/syscall_lib.o lib/ipc.o lib/fd.o lib/pageref.o lib/file.o lib/fsipc.o lib/console.o lib/fprintf.o lib/wait.o lib/spawn.o lib/pipe.o ../lib/elfloader.o ../lib/print.o ../lib/string.o
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o testarg.o testarg.c
mips-linux-gnu-ld -o testarg.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ./user.lds testarg.o lib/entry.o lib/syscall_wrap.o lib/debugf.o lib/libos.o lib/fork.o lib/syscall_lib.o lib/ipc.o lib/fd.o lib/pageref.o lib/file.o lib/fsipc.o lib/console.o lib/fprintf.o lib/wait.o lib/spawn.o lib/pipe.o ../lib/elfloader.o ../lib/print.o ../lib/string.o
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o testbss.o testbss.c
mips-linux-gnu-ld -o testbss.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ./user.lds testbss.o lib/entry.o lib/syscall_wrap.o lib/debugf.o lib/libos.o lib/fork.o lib/syscall_lib.o lib/ipc.o lib/fd.o lib/pageref.o lib/file.o lib/fsipc.o lib/console.o lib/fprintf.o lib/wait.o lib/spawn.o lib/pipe.o ../lib/elfloader.o ../lib/print.o ../lib/string.o
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o testfdsharing.o testfdsharing.c
mips-linux-gnu-ld -o testfdsharing.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ./user.lds testfdsharing.o lib/entry.o lib/syscall_wrap.o lib/debugf.o lib/libos.o lib/fork.o lib/syscall_lib.o lib/ipc.o lib/fd.o lib/pageref.o lib/file.o lib/fsipc.o lib/console.o lib/fprintf.o lib/wait.o lib/spawn.o lib/pipe.o ../lib/elfloader.o ../lib/print.o ../lib/string.o
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -Iinclude -c -o init.o init.c
mips-linux-gnu-ld -o init.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ./user.lds init.o lib/entry.o lib/syscall_wrap.o lib/debugf.o lib/libos.o lib/fork.o lib/syscall_lib.o lib/ipc.o lib/fd.o lib/pageref.o lib/file.o lib/fsipc.o lib/console.o lib/fprintf.o lib/wait.o lib/spawn.o lib/pipe.o ../lib/elfloader.o ../lib/print.o ../lib/string.o
rm testbss.o tltest.o testfdsharing.o pingpong.o echo.o icode.o halt.o cat.o run.o devtst.o mkdir.o init.o tree.o testptelibrary.o touch.o fktest.o testarg.o sh.o testpiperace.o testpipe.o fstest.o history.o ls.o num.o
make[2]: 离开目录“/home/git/21373161/user”
make --directory=fs
make[2]: 进入目录“/home/git/21373161/fs”
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -I../user/include -c -o fs.o fs.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -I../user/include -c -o ide.o ide.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -I../user/include -c -o serv.o serv.c
mips-linux-gnu-ld -o serv.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ../user/user.lds serv.o ../user/lib/entry.o ../user/lib/syscall_wrap.o ../user/lib/debugf.o ../user/lib/libos.o ../user/lib/fork.o ../user/lib/syscall_lib.o ../user/lib/ipc.o ../user/lib/fd.o ../user/lib/pageref.o ../user/lib/file.o ../user/lib/fsipc.o ../user/lib/console.o ../user/lib/fprintf.o ../user/lib/wait.o ../user/lib/spawn.o ../user/lib/pipe.o ../user/../lib/elfloader.o ../user/../lib/print.o ../user/../lib/string.o fs.o ide.o
../tools/bintoc -f serv.b -o serv.b.c -p fs
mips-linux-gnu-gcc -I../include -I../user/include --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -c -o serv.x serv.b.c
mips-linux-gnu-gcc --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -I../include -I../user/include -c -o check.o check.c
mips-linux-gnu-ld -o check.b -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -T ../user/user.lds check.o ../user/lib/entry.o ../user/lib/syscall_wrap.o ../user/lib/debugf.o ../user/lib/libos.o ../user/lib/fork.o ../user/lib/syscall_lib.o ../user/lib/ipc.o ../user/lib/fd.o ../user/lib/pageref.o ../user/lib/file.o ../user/lib/fsipc.o ../user/lib/console.o ../user/lib/fprintf.o ../user/lib/wait.o ../user/lib/spawn.o ../user/lib/pipe.o ../user/../lib/elfloader.o ../user/../lib/print.o ../user/../lib/string.o fs.o ide.o
../tools/bintoc -f check.b -o check.b.c -p fs
mips-linux-gnu-gcc -I../include -I../user/include --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -O0 -g -ggdb -DMOS_DEBUG --std=gnu99 -EL -G 0 -mno-abicalls -fno-pic -ffreestanding -fno-stack-protector -fno-builtin -Wa,-xgot -Wall -mxgot -mfp32 -march=r3000 -DLAB=6 -DMOS_INIT_OVERRIDDEN -O0 -g -ggdb -DMOS_DEBUG -c -o check.x check.b.c
rm serv.o check.o
make[2]: 离开目录“/home/git/21373161/fs”
mkdir -p target
mips-linux-gnu-ld -EL -G 0 -static -n -nostdlib --fatal-warnings -EL -G 0 -static -n -nostdlib --fatal-warnings -o target/mos -N -T kernel.lds lib/*.o init/*.o kern/*.o user/bare/*.x user/*.x fs/*.x
make --directory=fs image fs-files="../tests/lab6_2/fs/aaa.txt ../tests/lab6_2/fs/lorem ../tests/lab6_2/fs/script ../tests/lab6_2/fs/test ../tests/lab6_2/fs/testshell.sh"
make[2]: 进入目录“/home/git/21373161/fs”
dd if=/dev/zero of=../target/fs.img bs=4096 count=1024 2>/dev/null
# using awk to remove paths with identical basename from FSIMGFILES
../tools/fsformat ../target/fs.img \
	$(printf '%s\n' rootfs/motd rootfs/newmotd ../user/num.b ../user/echo.b ../user/halt.b ../user/ls.b ../user/sh.b ../user/cat.b ../user/tree.b ../user/run.b ../user/history.b ../user/mkdir.b ../user/touch.b ../user/testpipe.b ../user/testpiperace.b ../user/testptelibrary.b ../user/testarg.b ../user/testbss.b ../user/testfdsharing.b ../user/pingpong.b ../user/init.b ../tests/lab6_2/fs/aaa.txt ../tests/lab6_2/fs/lorem ../tests/lab6_2/fs/script ../tests/lab6_2/fs/test ../tests/lab6_2/fs/testshell.sh | awk -F/ '{ ns[$NF]=$0 } END { for (n in ns) { print ns[n] } }')
writing regular file '../tests/lab6_2/fs/aaa.txt' into disk
writing regular file '../user/run.b' into disk
writing regular file '../user/testarg.b' into disk
writing regular file '../user/cat.b' into disk
writing regular file '../user/pingpong.b' into disk
writing regular file '../user/testbss.b' into disk
writing regular file 'rootfs/newmotd' into disk
writing regular file '../user/history.b' into disk
writing regular file '../user/testpiperace.b' into disk
writing regular file '../user/testpipe.b' into disk
writing regular file 'rootfs/motd' into disk
writing regular file '../user/init.b' into disk
writing regular file '../user/num.b' into disk
writing regular file '../tests/lab6_2/fs/lorem' into disk
writing regular file '../user/touch.b' into disk
writing regular file '../user/mkdir.b' into disk
writing regular file '../tests/lab6_2/fs/test' into disk
writing regular file '../user/testfdsharing.b' into disk
writing regular file '../tests/lab6_2/fs/testshell.sh' into disk
writing regular file '../tests/lab6_2/fs/script' into disk
writing regular file '../user/ls.b' into disk
writing regular file '../user/echo.b' into disk
writing regular file '../user/sh.b' into disk
writing regular file '../user/tree.b' into disk
writing regular file '../user/halt.b' into disk
writing regular file '../user/testptelibrary.b' into disk
make[2]: 离开目录“/home/git/21373161/fs”
make[1]: 离开目录“/home/git/21373161”
