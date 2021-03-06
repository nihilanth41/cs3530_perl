#!/usr/bin/perl

use strict;
use warnings;

my $string = "toy='truck' color='red' cat='purrdy' dog='beagle' car='toyota' dog='mut' apple='delicious' dog='shepherd' color='blue'";
my @properties = ("dog", "color", "toy", "apple");

foreach my $property (@properties)
{
	while($string =~ /($property)='([^']*)'/g)
	{
		if(defined $1 && defined $2)
		{
			# The end position: $+[num] gives the location of the first character *after* the match
			print "$1 at ", $-[1],"-",$+[1]-1," type $2 at ", $-[2],"-",$+[2]-1, "\n";
		}
	}
}

