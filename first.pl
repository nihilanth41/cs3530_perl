#!/usr/bin/perl

use strict;
use warnings;

my $fname = "Zachary";
my $lname = "Rump";

print "$fname ", "$lname\n";

# Default behavior is all vars are global
# 'my' keyword makes local to block
# 'local' keyword is a more liberal version of 'my'
my @things = (
		"Item1",
		"Item2",
	);

foreach my $thing (@things) {
	print "$thing\n";
}

#foreach(@things) {
#	print "$_\n";
#}


# References
# E.g. pass multiple arrays to a function by passing a single reference
my $thingRef = \@things;

# Dereference
foreach(@{$thingRef}) {
	print "$_ \n";
}

# thingRef is a single value so we don't need brackets e.g.
	# foreach(@$thingRef)

my %hash = ( 
		"key1" => "value1",
		"key2" => "value2", 
	);

print $hash{"key1"}, "\n";
