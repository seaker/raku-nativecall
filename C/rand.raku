#!/bin/env raku

use NativeCall;

#sub c_rand() returns int32 is native('c') is symbol('rand') { * }
sub c_rand()       returns int32 is native('/lib64/libc-2.31.so') is symbol('rand')  { * }
sub c_srand(int32)               is native('/lib64/libc-2.31.so') is symbol('srand') { * }

c_srand((^10000000000).roll);
put c_rand();
