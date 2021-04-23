#!/bin/env raku

use NativeCall;

sub my_sqr(int32) returns int32 is native('./sqr-c.so') is symbol('my_sqr') {*}

put my_sqr(5);
put my_sqr(11);
