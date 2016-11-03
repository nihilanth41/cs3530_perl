#!/usr/bin/perl
use strict;
use warnings;

($#ARGV == 0) or die "Usage: $0 [phone_number]\n";

my $string = shift @ARGV;

# Detect if str is phone number
# get area code

print "\n$string", "\n";


# Match phone number w/ parens () or without
# Or with -,/," ", 
if($string =~ /(^\([2-9]\d{2}\)|^[2-9]\d{2})[\s|\-|\.|\/]?(\d{3})[\s|\-|\.|\/]?(\d{4})/)
{
	print "\nValid phone number\n";
	print "Area code: $1\n" if defined $1;
	print "Phone num: ", $2.$3, "\n" if(defined $2 && defined $3);
}
else
{
	print "Invalid phone number\n";
}
