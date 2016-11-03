#!/usr/bin/perl
use strict;
use warnings;

($#ARGV == 0) or die "Usage: $0 [phone_number]\n";

my $string = shift @ARGV;

# Detect if str is phone number
# get area code

print $string, "\n";



if($string =~ /^(\([2-9]\d{2}\)|^[2-9]\d{2})([\s|\-|\.|\/]?\d{3})[\s|\-|\.|\/]?(\d{4})/)
{

	#print "$1 $2 $3";
	print "Valid phone number\n";
}
else
{
	print "Invalid phone number\n";
}
