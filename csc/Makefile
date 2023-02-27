all:./code/fibo.c ./code/main.c
	gcc -o fibo.o -I./include/ -c ./code/fibo.c
	gcc -o main.o -I./include/ -c ./code/main.c
	cp fibo.o ./code/
	cp main.o ./code/
	gcc -o fibo -I./include/ ./code/main.c ./code/fibo.c
clean:
	rm ./code/fibo.o
	rm ./code/main.o
	rm fibo.o
	rm main.o
