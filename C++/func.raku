#!/bin/env raku

use NativeCall;

sub my_func() returns int32 is native('./func.so') is symbol('_Z7my_funcv') {*}

say my_func();
