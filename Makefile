all : wud.o main.o
	g++ -o wudcompress main.o wud.o

main.o : main.cpp wud.h
	g++ -Wall -c main.cpp -I./

wud.o : wud.cpp wud.h
	g++ -Wall -c wud.cpp -I./

clean :
	rm wudcompress main.o wud.o

