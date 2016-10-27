#!/usr/bin/perl

use strict;
use warnings;
use File::Find;

my $ARGC = scalar @ARGV;
$ARGC >= 2 or die "Error: not enough arguments.\nUsage is: $0 </path/to/dir> <minimum_size_in_bytes>\n";

my @file_sizes = ();
my %file_names = ();

# Get cmd line args
my ($dir, $num_files) = @ARGV;
if (-d $dir)
{
	for(my $i=0; $i<$num_files; $i++)
	{
		$file_sizes[$i] = 0;
	}
	find(\&print_if_file, $dir);

	print "Top $num_files largest files:\n";

	for(my $i=0; $i<$num_files; $i++)
	{
		if(defined ($file_names{$file_sizes[$i]}))
		{
			print "#", $i+1, " Size: $file_sizes[$i] Bytes, Path: $file_names{$file_sizes[$i]}\n";	
		}
	}
}

sub print_if_file { 
	# If file
	if( -f $_)
	{
		# Get filesize
		my $filesize = -s $_;
		# Check if within top 5 of biggest files
		for(my $i=0; $i<$num_files; $i++)
		{
			if($filesize > $file_sizes[$i])
			{
				$file_sizes[$i] = $filesize;
				$file_names{$filesize} = $File::Find::name;
				last;
			}
		}

#		print $File::Find::name, "\n" if ($filesize >= $min_size);
	}
}
