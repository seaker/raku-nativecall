#!/bin/env raku

use NativeCall;

sub myrand() returns int32 is native('./libmyrand.so') { * }

put myrand;
