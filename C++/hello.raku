#!/bin/env raku

use NativeCall;

sub hello() is native('./hello.so') is symbol('_Z5hellov') {*}

hello();
