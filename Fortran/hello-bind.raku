#!/bin/env raku

use NativeCall;

sub hello() is native('./hello-bind.so') {*}

hello();
