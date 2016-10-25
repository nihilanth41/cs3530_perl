#!/usr/bin/perl

use strict;
use warnings;
use File::Find;

my $ARGC = scalar @ARGV;
$ARGC >= 1 or die "Error: not enough arguments.\nUsage is: $0 </path/to/dir>\n";

my $file_counter = 0;
my $dir = shift;
find(\&count, $dir);

print "Count: $file_counter\n";

sub count { 
	$file_counter++;
}

