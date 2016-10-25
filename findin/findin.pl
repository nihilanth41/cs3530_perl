#!/usr/bin/perl

use strict;
use warnings;

my $ARGC = scalar @ARGV;
# Print help if not enough input args
$ARGC >= 2 or die "Error: not enough arguments.\nUsage is: $0 /path/to/file.txt string1 [ [string2] [string3] ... ]\n";

# Declare associative array for string counts
# Initialize counts to 0
my %str_count = ();
for(my $i=1; $i<$ARGC; $i++)
{
	$str_count{$ARGV[$i]} = 0;
}


my $input_file = $ARGV[0];
# If input file is readable
if(-r $input_file) {
	
	# Attempt to open it
	open(my $fh_r, "<", $input_file)
		or die "Can't open $input_file: $!";
	
	# For each line in the file 
	while(<$fh_r>)
	{	
		# For each string parameter
		for(my $i=1; $i<$ARGC; $i++)
		{
			# If string matches
			if($_ =~ m/$ARGV[$i]/)
			{
				# Increment count
				$str_count{$ARGV[$i]} += 1;
			}
		}
	}

	# Print total counts
	while (my ($key,$value) = each %str_count)
	{
		print "$key $value\n";
	}
}





