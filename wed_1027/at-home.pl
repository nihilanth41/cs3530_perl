#!/usr/bin/perl

use strict;
use warnings;

($#ARGV == 0) or die "Usage: $0 <string>\n";

my $str = $ARGV[0];
print "Before: $str\n";
print $str =~ m/\.{1}(.{2,})$/;

