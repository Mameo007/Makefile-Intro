#######
# SIMPAGER
#######
CXX = g++
CXXFLAGS = -O2

# -n do the things but it doesn't actually build
#First target but hello is now first target after change
simpager: main.o fifo.o lru.o opt.o rand.o
	$(CXX) $(CXXFLAGS) -o simpager main.o fifo.o lru.o opt.o rand.o

main.o: main.cpp
	$(CXX) $(CXXFLAGS) -c main.cpp

fifo.o: fifo.cpp
	$(CXX) $(CXXFLAGS) -c fifo.cpp

lru.o: lru.cpp
	$(CXX) $(CXXFLAGS) -c lru.cpp

opt.o: opt.cpp
	$(CXX) $(CXXFLAGS) -c opt.cpp

rand.o: rand.cpp
	$(CXX) $(CXXFLAGS) -c rand.cpp

#Put a full path so that it doesn't use alias
clean:
	/bin/rm -f *.o simpager
