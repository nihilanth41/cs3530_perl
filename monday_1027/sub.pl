#!/usr/bin/perl

# Intro to writing subroutines
my @numbers1 = (5, 4, 3, 2, 1);
my @numbers2 = (5, 4, 8, 9, 1);
print "Average: ", Average(@numbers1), "\n";
print "Average: ", Average_reference(\@numbers1, \@numbers2), "\n";


# Perl merges two arrays into 1 array
#print "Average: ", Average(@numbers1, @numbers2), "\n";

# Using references:
# Note: references are scalar, average receives 1 parameter



# Input: Array of numbers
sub Average {
	# Parameter list in @_
	my $num_args = scalar @_;
#	print "Num args: $num_args\n";
	my $avg = 0;
	foreach(@_) {
		$avg += $_
	}
	return ($avg/$num_args);

}

sub Average_reference {
	# Num args w/ reference
	my $array_ref = $_[0];
	# Or:
	# my $array_ref = shift @_;

	# Dereference and assign to scalar
	my $num_args = scalar @$array_ref;

#	print "Num args: $num_args\n";
	my $avg = 0;
	foreach(@$array_ref) {
		$avg += $_
	}
	return ($avg/$num_args);

}
