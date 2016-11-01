#!/usr/bin/perl
use strict;
use warnings;

my $string = "The big fox and the little fox played in the woods.";

# Replace fox with cat
$string =~ s/fox/cat/g;
print $string, "\n";

# Replace the with 'a' but case sensitive
# Chllnge: single regex to find {The or the} replace with correct case and only twice
$string =~ s/^the/A/i;
print "$string\n";

# Squeeze spaces out
# Match whitespace 1 or more times
$string =~ s/\s+//g;
print "$string\n";





