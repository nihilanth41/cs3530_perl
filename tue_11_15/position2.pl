#!/usr/bin/perl
use strict;
use warnings;

my $string = "toy='truck' color='red' cat='purrdy' dog='beagle' car='toyota' dog='mut' apple='delicious' dog='shepherd' color='blue'";

my @properties = ("dog", "color", "toy", "apple");

for my $property (@properties) {

	while($string =~ m/($property)='(\w*)'/g) {
		if (defined $0) {
			print "$1 at ", $-[1], "-", $+[1]-1;
		}
		if (defined $1) {
			print " type $2 at ", $-[2], "-", $+[2]-1, "\n";
		}
	}

}
