#!/usr/bin/perl

# findin.pl 
# Input:
# 	takes path to text file as first argument
# 	followed by one or more (string) arguments which should be searched for, in each line of the input file

# Output: 
#	Print each string parameter, followed by the number of lines in the text file where the string occurs.
#- Multiple times per 1 line counts as 1 occurence.
#	If insufficient args print help

use strict;
use warnings;

# Check for enough input args
my $ARGC = scalar @ARGV;
$ARGC >= 2 or die "Error: not enough arguments.\nUsage is: $0 /path/to/auth.log string1 [ [string2] [string3] ... ]\n";

# Declare associative array for input strings count
# Initialize elements to 0
my %str_count = ();
for(my $i=1; $i<$ARGC; $i++)
{
	$str_count{$ARGV[$i]} = 0;
}

my $input_file = $ARGV[0];
if(-r $input_file) {
	
	open(my $fh_r, "<", $input_file)
		or die "Can't open $input_file: $!";
	
	while(<$fh_r>)
	{	
		for(my $i=1; $i<$ARGC; $i++)
		{
			if($_ =~ m/$ARGV[$i]/)
			{
				$str_count{$ARGV[$i]} += 1;
			}
		}
	}

	while (my ($key,$value) = each %str_count)
	{
		print "$key $value\n";
	}
}





