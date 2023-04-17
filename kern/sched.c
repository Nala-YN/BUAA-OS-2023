#include <env.h>
#include <pmap.h>
#include <printk.h>

/* Overview:
 *   Implement a round-robin scheduling to select a runnable env and schedule it using 'env_run'.
 *
 * Post-Condition:
 *   If 'yield' is set (non-zero), 'curenv' should not be scheduled again unless it is the only
 *   runnable env.
 *
 * Hints:
 *   1. The variable 'count' used for counting slices should be defined as 'static'.
 *   2. Use variable 'env_sched_list', which contains and only contains all runnable envs.
 *   3. You shouldn't use any 'return' statement because this function is 'noreturn'.
*/
void schedule(int yield) {
   static int count = 0; // 当前env剩余的时间片
   struct Env *e = curenv;
   static int user_time[5]; // 创建一个用户累计运行时间片数数组
	int user[10];
	int i;
	for(i=0;i<=4;i++){
		user[i]=0;
	}
	struct Env* temp;
	TAILQ_FOREACH(temp,&env_sched_list,env_sched_link){
		user[temp->env_user]=1;
	}
   if (count==0||yield!=0||e==NULL||e->env_status!=ENV_RUNNABLE) {
      if (e!=NULL&&e->env_status==ENV_RUNNABLE) {
         TAILQ_REMOVE(&env_sched_list,e,env_sched_link);
		TAILQ_INSERT_TAIL(&env_sched_list,e,env_sched_link);
         user_time[e->env_user]+=e->env_pri;
      }
      if (TAILQ_EMPTY(&env_sched_list)) {
			panic("empty!\n");
      }
	int min=10000000;
	int goal=-1;
	for(i=0;i<=4;i++){
		if(user[i]==1){
			if(user_time[i]<min){
				min=user_time[i];
				goal=i;
			}
		}
	}
      TAILQ_FOREACH(temp,&env_sched_list,env_sched_link){
			if(temp->env_user==goal){
				e=temp;
				break;
			}
		}
      count=e->env_pri;
   }

   count--;
   env_run(e);
}
