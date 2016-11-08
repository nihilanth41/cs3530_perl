#!/usr/bin/perl

use strict;
use warnings;

# An html file is provided as a parameter to the script.
($#ARGV == 0) or die("Usage is: $0 </path/to/file.html>\n");

# Get param and open file
my $filepath = shift;
open(my $fh_r, "<:encoding(UTF-8)", $filepath) or die "Can't open file $filepath. $!"; 

# Read all lines in file into a single string variable
my $string = "";
while(<$fh_r>)
{
	$string .= $_;
}
close($fh_r);

# Find and display title
#my @links = $string =~ /<a\s+[^>]*href="([^"]*)"[^>]*>/g;
my @title = $string =~ /<title>([^<]*)<\/title>/g;
print "Title: \n", "$title[0]\n" if defined $title[0];

my @strong = $string =~ /<strong>([^<]*)<\/strong>/g;
print "\nStrong tags: \n";
foreach(@strong)
{
	print "$_\n";
}
print "Number of contents in strong tags: ", $#strong+1, "\n";

my @headers = $string =~ /<h[1-6]{1}>([^<]*)<\/h[1-6]{1}>/g;
print "\nContent of headers: \n";
foreach(@headers)
{

	print "$_\n";
}
print "Number of contents in header tags: ", $#headers+1, "\n";



