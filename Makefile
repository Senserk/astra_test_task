run:
	make build
	./trusty_reflection.out
	 

build: clever_williams.o kirch.o print_kirch.o trusty_reflection.o bhaskara.o
	$(CC) -O0 -g -Wall -o trusty_reflection.out trusty_reflection.o bhaskara.o kirch.o print_kirch.o clever_williams.o
	rm *.o

clever_williams.o: clever_williams.c
	$(CC) -O0 -g -Wall -c -o clever_williams.o clever_williams.c $(CFLAGS)

kirch.o: kirch.c
	$(CC) -O0 -g -Wall -c -o kirch.o kirch.c $(CFLAGS)

print_kirch.o: print_kirch.c
	$(CC) -O0 -g -Wall -c -o print_kirch.o print_kirch.c $(CFLAGS)

trusty_reflection.o: trusty_reflection.c
	$(CC) -O0 -g -Wall -c -o trusty_reflection.o trusty_reflection.c $(CFLAGS)

bhaskara.o: bhaskara.c
	$(CC) -O0 -g -Wall -c -o bhaskara.o bhaskara.c $(CFLAGS)

clean:
	rm *.o
	rm *.out

