#!/usr/bin/perl

use strict;
use warnings;

($#ARGV == 0) or die "Usage is: $0 <domainname>\n";
my $arg = shift;
$arg = "whois --host=whois.godaddy.com $arg";
my $lines = `$arg`;
while($lines =~ m/Registrant/g)
{
	print;
}
#while($lines =~ /Registrant\s{1}[Name|Phone|Email]{1}:(.*)\n/g)
#{
#while($lines =~ /Registrant(.*)/g)
#{
#}

# Registrant's name
# Email
# Phone number



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
