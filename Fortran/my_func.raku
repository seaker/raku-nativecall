#!/bin/env raku

use NativeCall;

sub my_func() returns int32 is native('my_func.so') is symbol('my_func_') {*}

put my_func();
