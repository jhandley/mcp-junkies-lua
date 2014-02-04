call_c_from_lua: main.o
	gcc -o call_c_from_lua main.o -llua52

main.o: main.c
	gcc -c -o main.o main.c

clean:
	rm main.o call_c_from_lua