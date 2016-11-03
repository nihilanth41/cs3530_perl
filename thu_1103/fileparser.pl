#!/usr/bin/perl
use strict;
use warnings;

($#ARGV == 0) or die "Usage: $0 [filepath]\n";

my $filepath = shift @ARGV;

open(my $fh, '<:encoding(UTF-8)', $filepath) or die "Could not open file '$filepath' $!";

my $string = "";
while (my $line = <$fh>) {
	$string .= $line;
}

#if($string =~ /<img[\s]+[.*]src="(.*)"\/>/) {

# How to get array from regex KEY: GLOBAL
#my @images = $string =~ /<regex>/g 

# 50 matches:
#my @images = $string =~ /<img[^src]*src="([^"]*)"[^>]*>/g;

# 70 matches:
# notation automatically assigns selection i.e. ()
my @images = $string =~ /<img\s{1}[^>]*src="([^"]*)"[^>]*>/g;
foreach(@images) 
{
	print $_, "\n\n";
	
}
print $#images, "\n";
#and urls with src=""
# i.e. list of all images in the image tags
#<img src=""/>
#<img class="" src="">


