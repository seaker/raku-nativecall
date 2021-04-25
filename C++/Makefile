CXXFLAGS := -Wall -fPIC

TARGETS := string talk sqr sqr-c hello func

latest: $(firstword $(TARGETS))

%: %.cc
	g++ $(CXXFLAGS) -shared -o $*.so $^
	chmod 644 $*.so

%: %.cpp
	g++ $(CXXFLAGS) -shared -o $*.so $^
	chmod 644 $*.so

.PHONY: all clean

#sqr-c: sqr-c.cpp
	#g++ $(CXXFLAGS) -shared -o sqr.so sqr-c.cpp
	#chmod 644 sqr.so

all: $(TARGETS) *.so

clean:
	@rm -f $(TARGETS)
