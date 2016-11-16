#!/usr/bin/perl

#Write a perl program that:
#- accepts a domain name as a command line parameter
#- runs the whois command and passes the domain name as a parameter to it
#- captures the output of the whois command
#- uses a regular expression with the output of whois to retrieve and display:
#- the registrant's name
#- the registrant's email address
#- the registrant's phone number
#
#Example run of the program:
#./registrant.pl dalemusser.com
#Dale Musser
#+1.5738644230
#dalemusser@gmail.comh

use strict;
use warnings;

($#ARGV == 0) or die "Usage is: $0 <domainname>\n";

my $arg = shift;
my $cmd = "whois $arg";
my $line = `$cmd`;
while($line =~ /Registrant\s{1}[Name|Phone|Email]*:([^\n]*)\n/g)
{
	print "$1\n" if defined $1;
}
