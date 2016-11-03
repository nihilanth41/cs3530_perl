#!/usr/bin/perl
use strict;
use warnings;

($#ARGV == 0) or die "Usage: $0 [phone_number]\n";

my $string = shift @ARGV;

# Detect if str is phone number
# get area code

print $string, "\n";


# Another option (NOT 0 and NOT 1) 
# Downside: matches non-digits
#if($string =~ /([^0|^1]\d{2})-(\d{3})-(\d{4})/)

# ###-###-####
if($string =~ /([2-9]\d{2})-(\d{3})-(\d{4})/)
{
	# Dashes could be space, no space, slashes
	#print "$1 $2 $3";
	print "Valid phone number\n";
}
else
{
	print "Invalid phone number\n";
}
