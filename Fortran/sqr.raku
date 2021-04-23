#!/bin/env raku

use NativeCall;

sub my_sqr(int32) returns int32 is native('./sqr.so') is symbol('my_sqr_') {*}

put my_sqr(8);
put my_sqr(21);
