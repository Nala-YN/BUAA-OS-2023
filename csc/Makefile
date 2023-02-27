all:./code/fibo.c ./code/main.c
	gcc -o fibo.o -I./include/ -c ./code/fibo.c
	gcc -o main.o -I./include/ -c ./code/main.c
	gcc -o fibo -I./include/ ./code/main.c ./code/fibo.c
clean:
	rm ./code/*.o
