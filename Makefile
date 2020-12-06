OBJS=$(shell find $(CURDIR) -name \*.cpp | sed 's/.cpp$$/.o/')
CXX=clang++
CFLAGS=-O2

all: lossyWAV

lossyWAV: $(OBJS)
	$(CXX) $^ -o $@ -ldl

clean:
	rm $(OBJS)
