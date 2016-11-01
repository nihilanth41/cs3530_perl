#!/usr/bin/perl
use strict;
use warnings;

($#ARGV == 0) or die "Usage: $0 [phone_number]\n";

my $string = shift @ARGV;

print $string, "\n";

