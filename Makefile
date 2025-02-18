run:
	make build
	./trusty_reflection.out
	 

build: clever_williams.o kirch.o print_kirch.o trusty_reflection.o bhaskara.o
	$(CC) -O0 -g -Wall $(CFALGS) -o trusty_reflection.out trusty_reflection.o bhaskara.o kirch.o print_kirch.o clever_williams.o
	rm *.o

clever_williams.o: clever_williams.c
	$(CC) -O0 -g -Wall $(CFALGS) -c -o clever_williams.o clever_williams.c
	

kirch.o: kirch.c
	$(CC) -O0 -g -Wall $(CFALGS) -c -o kirch.o kirch.c

print_kirch.o: print_kirch.c
	$(CC) -O0 -g -Wall $(CFALGS) -c -o print_kirch.o print_kirch.c

trusty_reflection.o: trusty_reflection.c
	$(CC) -O0 -g -Wall $(CFALGS) -c -o trusty_reflection.o trusty_reflection.c

bhaskara.o: bhaskara.c
	$(CC) -O0 -g -Wall -Wno-unused-variable -Wno-unused-but-set-variable -Wno-error -Wno-return-type -Wno-string-plus-int -Wno-int-conversion -Wno-incompatible-pointer-types -c -o bhaskara.o bhaskara.c

clean:
	rm *.o
	rm *.out

