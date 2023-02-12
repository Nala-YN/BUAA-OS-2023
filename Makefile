.PHONY: clean

out: calc case_all makecalc
	./calc < case_all > out
case_all: case_add case_sub case_mul case_div
	touch case_all
	cat case_add >> case_all
	cat case_sub >> case_all
	cat case_mul >> case_all
	cat case_div >> case_all
case_add: makecasegen
	./casegen add 100 > case_add
case_sub: makecasegen
	./casegen sub 100 > case_sub
case_mul: makecasegen
	./casegen mul 100 > case_mul
case_div: makecasegen
	./casegen div 100 > case_div
makecasegen: casegen.c
	gcc -o casegen casegen.c
makecalc: calc.c
	gcc -o calc calc.c	
clean:
	rm -f out calc casegen case_*
