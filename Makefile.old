###############################################
#
# Sample Makefile 1
#
###############################################
all: simpager

simpager: main.o fifo.o lru.o opt.o rand.o
	g++ main.o fifo.o lru.o opt.o rand.o -o simpager

main.o: main.cpp
	g++ -c main.cpp 

fifo.o: fifo.cpp fifo.h
	g++ -c fifo.cpp 

lru.o: lru.cpp lru.h
	g++ -c lru.cpp 

opt.o: opt.cpp opt.h
	g++ -c opt.cpp 

rand.o: rand.cpp rand.h
	g++ -c rand.cpp 

clean:
	/bin/rm -f *.o *~ core* simpager
