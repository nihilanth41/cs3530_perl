#!/usr/bin/perl

use strict;
use warnings;

# Date string is provided as parameter
($#ARGV == 0) or die("Usage is: $0 <date string>\n");

my $date_str = shift;
if($date_str =~ /(\d{4}-\d{2}-\d{2}$)/)
{
	# Valid
	print $1;
}
elsif($date_str =~ /(\d{2}\/\d{2}\/\d{4}$)/)
{
	print $1;
}
elsif($date_str =~ /(\d{2}\/\d{2}\/\d{2}$)/)
{
	print $1;
}
elsif($date_str =~ /(^\s*[aA-zZ]{3}\s\d{2},\s*\d{4}$)/)
{
	print $1;
}

#YYYY-MM-DD
#MM/DD/YYYY
#MM/DD/YY
#MON DD, YYYY
#
#Where:
#MM DD and YYYY are numbers
#MON is month represented as Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, or Dec


