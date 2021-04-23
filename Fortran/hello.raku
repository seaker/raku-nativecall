#!/bin/env raku

use NativeCall;

sub hello() is native('./hello.so') is symbol('hello_') {*}

hello();
