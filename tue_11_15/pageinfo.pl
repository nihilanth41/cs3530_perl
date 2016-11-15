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

print "\n";

if ($string =~ /<title>([^<]+)<\/title>/) {
    print "title:\n$1\n\n" if defined $1;
}

my @strong_items = $string =~ /<strong>([^<]+)<\/strong>/g;

print "strong items:\n";
foreach my $strong_item (@strong_items) {
    print "$strong_item\n";
}

print "\nNumber of strong items: ", scalar @strong_items, "\n\n";

# Could match e.g. <h1></h6> i.e. malformed html
my @header_items = $string =~ /<h[1-6][^>]*>(.+?\n?.+?)<\/h[1-6][^>]*>/g;

print "header items:\n";
foreach my $header_item (@header_items) {
    print "$header_item\n";
}

print "\nNumber of header items: ", scalar @header_items, "\n\n";

# http://www.regular-expressions.info/replacebackref.html
# Numbered Backreferences
# Match found <hn> with </hn>.  So, as example, <h1> has to have matching </h1>

print "(Alt) header items:\n";
my $headers_count = 0;
while($string =~ /<(h[1-6])[^>]*>(.+?\n?.+?)<\/\1[^>]*>/g) {
	if (defined $2) {
		print $2, "\n";
		$headers_count++;
	}
}

print "\n(Alt) Number of header items: ", $headers_count, "\n\n";


