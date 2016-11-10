#!/usr/bin/perl

use strict;
use warnings;

my $string = "toy='truck' color='red' cat='purrdy' dogs='beagle' car='toyota' doggy='mut' apple='delicious' dog='shepherd' colour='blue'";
while($string =~ /(dog[s|gy]*)='([^']*)'/g)
{
	print "$1 at ", $-[1],"-",$+[1]-1," type $2 at ", $-[2],"-",$+[2]-1, "\n";
}

# Locate dog, dogs, doggy
# find =""
# determine start and end of each instance e.g. dogs = i['d'] i['s']
# determine start and end of each property value

