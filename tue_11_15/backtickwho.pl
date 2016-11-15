#!/usr/bin/perl

use strict;
use warnings;

my $result = `who`;
while ( $result =~ /(\w+)\s+(\w+)\s+(\w{3})\s+(\d+)\s+(\d{2}:\d{2})/g ) {	    
	print "userid: ", $1, "\n" if defined $1;
	print "line: ", $2, "\n" if defined $2;
	print "month: ", $3, "\n" if defined $3;
	print "day:", $4, "\n" if defined $4;
	print "time: ", $5, "\n" if defined $5;
	print "\n";
}
