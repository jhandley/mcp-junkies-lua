embed_lua_in_c: main.o
	gcc -o embed_lua_in_c main.o -llua52

main.o: main.c
	gcc -c -o main.o main.c

clean:
	rm main.o embed_lua_in_c