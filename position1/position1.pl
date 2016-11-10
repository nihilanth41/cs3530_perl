#!/usr/bin/perl

use strict;
use warnings;

my $string = "toy='truck' color='red' cat='purrdy' dogs='beagle' car='toyota' doggy='mut' apple='delicious' dog='shepherd' colour='blue'";

# The end position: $+[num] gives the location of the first character *after* the match
while($string =~ /(dog[s|gy]*)='([^']*)'/g)
{
	if(defined $1 && defined $2)
	{
		print "$1 at ", $-[1],"-",$+[1]-1," type $2 at ", $-[2],"-",$+[2]-1, "\n";
	}
}

# Same thing for colour
while($string =~ /(colo[u]*r)='([^']*)'/g)
{
	if(defined $1 && defined $2)
	{
		print "$1 at ", $-[1],"-",$+[1]-1," type $2 at ", $-[2],"-",$+[2]-1, "\n";
	}
}
