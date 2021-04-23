#!/bin/env raku

use NativeCall;

sub my_sqr(int32) returns int32 is native('./sqr.so') is symbol('_Z6my_sqri') {*}

put my_sqr(5);
put my_sqr(4);
put my_sqr(3);
