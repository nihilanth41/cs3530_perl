#!/usr/bin/perl

use strict;
use warnings;

$ARGC = scalar @ARGV;
$ARGC >= 1 or die "Error: not enough arguments.\nUsage is: $0 </path/to/dir>\n";
