#!/usr/bin/perl

use strict;
use warnings;
use File::Find;

my $ARGC = scalar @ARGV;
$ARGC >= 2 or die "Error: not enough arguments.\nUsage is: $0 </path/to/dir> <minimum_size_in_bytes>\n";


my ($dir, $min_size) = @ARGV;
if (-d $dir)
{
	find(\&print_if_file, $dir);
}

sub print_if_file { 
	# If file
	if( -f $_)
	{
		my $filesize = -s $_;
		print $File::Find::name, "\n" if ($filesize >= $min_size);
	}
}

