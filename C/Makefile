CFLAGS := -Wall

TARGETS := myrand-main rand

latest: $(firstword $(TARGETS))

#%: %.cc
#	$(CXX) $(CXXFLAGS) $^ -o $@ $(LDFLAGS)

myrand-main: myrand-main.c myrand.c

libmyrand:
	gcc -shared -olibmyrand.so myrand.c 

.PHONY: all clean

all: $(TARGETS) *.so

clean:
	@rm -f $(TARGETS)
