#!/usr/bin/perl

use strict;
use warnings;

# File test operators

# Input: path argument
# Return: is path a file or a directory?
($#ARGV == 0) or die "Usage: $0 <path>\n";
check($ARGV[0]);

sub check { 
	# $_ is like 'current thing'
	$_ = $_[0];
	print if -d;
	print if -f;

}
