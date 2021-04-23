F95FLAGS := -Wall

TARGETS := sqr hello hello-bind func func_test

latest: $(firstword $(TARGETS))

%: %.f95
	gfortran $(F95FLAGS) -shared -o $*.so $^
	chmod 644 $*.so

func_test: func_test.f95
	gfortran -o my_func.so -shared func.f95
	gfortran -o func_test func_test.f95 my_func.so
	chmod 644 my_func.so
	sudo cp my_func.so /usr/lib/x86_64-linux-gnu/

.PHONY: all clean

all: $(TARGETS) *.so

clean:
	@rm -f $(TARGETS) *.so
