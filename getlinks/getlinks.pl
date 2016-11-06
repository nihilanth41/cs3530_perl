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

# Search for <a> tag in all lines in the file
# and assign the href= contents into a list.
my @links = $string =~ /<a\s+[^>]*href="([^"]*)"[^>]*>/g;

# Sort lexically 
@links = sort @links;
# Print each link w/ newline
foreach(@links)
{
	print "$_\n";
}

# Print total number of links found
print "Total number of links found: $#links\n";
