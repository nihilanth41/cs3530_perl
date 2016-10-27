#!/usr/bin/perl

use strict;
use warnings;

($#ARGV == 0) or die "Usage is: $0 [url]\n";
my $url = shift;

print "Before: $url\n";

# Detect if file:// => remove and leave path
#if($url =~ m/^file:\/\//)
if ($url =~ m!^file://!)
{
	# ^ beginning of line
	# character immediately after the 'm or s' sets delimiter
	#$url =~ s/^file:\/\///;
	$url =~ s!^file://!!;
	print "After: $url\n";
}
else {
	print "Not found\n";
}


