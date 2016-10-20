#!/usr/bin/perl

use strict;
use warnings;

scalar @ARGV == 1 or die "$0 /path/to/auth.log\n";

# If parameters passed
if($#ARGV >= 0) {
	# Input args
 	my $log_path = $ARGV[0];
	if(-r $log_path) {
		print "File: $log_path exists and is readable\n";}

	open(my $fh_r, "<", $log_path)
		or die "Can't open $log_path: $!";
	while(<$fh_r>)
	{	
		# Process $_
		if($_ =~ m/USER=root/)
		{
			print $_;
		}
	}

}


