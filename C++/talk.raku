#!/bin/env raku

use NativeCall;

sub talk(Str) is native('./talk.so') is symbol('talk') { * }

talk("Tom");
talk("Mary");
