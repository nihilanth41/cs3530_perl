#!/usr/bin/perl
use strict;
use warnings;

($#ARGV == 0) or die "Usage: $0 [date]\n";

my $date = shift @ARGV;

# http://www.regular-expressions.info/brackets.html
# See Non-Capturing Groups for (?: ) 
# ?: => use parenthesis for "ORing' but don't actually capture.

# if($date =~ /^(\d{4})-[01]\d-[0-3]\d|^[01]\d\/[0-3]\d\/(\d{4}|\d{2})|(?:^Jan|^Feb|^Mar|^Apr|^May|^Jun|^Jul|^Aug|^Sep|^Oct|^Nov|^Dec)\s[0-3]\d,\s(\d{4})/) {

if($date =~ /^(\d{4})-[01]\d-[0-3]\d|^[01]\d\/[0-3]\d\/(\d{4}|\d{2})|^(?:Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\s[0-3]\d,\s(\d{4})/) {
    print "$date is valid\n";
    print "The year is $1\n" if defined $1;
    print "The year is $2\n" if defined $2;
    print "The year is $3\n" if defined $3;
}
