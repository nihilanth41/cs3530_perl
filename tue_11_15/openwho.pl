#!/usr/bin/perl

use strict;
use warnings;

open DATA, "who |"   or die "Couldn't execute who: $!";
while ( defined( my $line = <DATA> )  ) {
	$line =~ /(\w+)\s+(\w+)\s+(\w{3})\s+(\d+)\s+(\d{2}:\d{2})/;
	print "userid: ", $1, "\n" if defined $1;
	print "line: ", $2, "\n" if defined $2;
	print "month: ", $3, "\n" if defined $3;
	print "day:", $4, "\n" if defined $4;
	print "time: ", $5, "\n" if defined $5;
	print "\n";
}
close DATA;