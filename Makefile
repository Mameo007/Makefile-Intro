#######
# SIMPAGER
#######
CXX = g++
CXXFLAGS = -O2
OBJS = main.o fifo.o lru.o opt.o rand.o

###
# $^ -"all the dependencies"
# $< -"the first dependency"
# $@ -"the target name"


simpager: $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^

#General structure of the instrucion for each compiling
#targets... : target_pattern : prereq_pattern
#	commands


#any .o file in dependency
$(OBJS) : %.o : %.cpp
	@echo "Macros version"
	$(CXX) $(CXXFLAGS) -c $<

#This will be used since it's after
main.o: main.cpp
	@echo "Building main.o"
	$(CXX) $(CXXFLAGS) -c $<

#fifo.o: fifo.cpp
#	$(CXX) $(CXXFLAGS) -c $<

#lru.o: lru.cpp
#	$(CXX) $(CXXFLAGS) -c $<

#opt.o: opt.cpp
#	$(CXX) $(CXXFLAGS) -c $<

#rand.o: rand.cpp
#	$(CXX) $(CXXFLAGS) -c $<


#Put a full path so that it doesn't use alias
.PHONY: clean
clean:
	/bin/rm -f *.o simpager
