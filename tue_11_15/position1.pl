#!/usr/bin/perl
use strict;
use warnings;

my $string = "toy='truck' color='red' cat='purrdy' dogs='beagle' car='toyota' doggy='mut' apple='delicious' dog='shepherd' colour='blue'";

while($string =~ m/(dogs?|doggy)='(\w*)'/g) {
	if (defined $1) {
		print "$1 at ", $-[1], "-", $+[1]-1;
	}
	if (defined $2) {
		print " type $2 at ", $-[2], "-", $+[2]-1, "\n";
	}
}

while($string =~ m/(colou?r)='(\w*)'/g) {
	if (defined $1) {
		print "$1 at ", $-[1], "-", $+[1]-1;
	}
	if (defined $2) {
		print " type $2 at ", $-[2], "-", $+[2]-1, "\n";
	}
}
