#!/usr/bin/perl

my %person = ( "name" => "Zach",
		"age" => 25);

my @keys = keys(%person);
foreach(@keys) {
	print "$_ = $person{$_}\n";

}
