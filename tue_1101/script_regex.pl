#!/usr/bin/perl
use strict;
use warnings;

# http://perlmaven.com/here-documents

# Demonstration of here str
# END_HTML == end marker

# determine if <script></script>A
# extract it

# script lang=""
# ensure lang 
my $string = <<'END_HTML';
<html>
<head>
<title>My Web Page</title>
<script   lang = " foo ">

function sayHello() {
	alert("Hello world!");
}

function add(num1, num2) {
	return num1 + num2;
} 

</script>
</head>
<body>
This is my web page.
</body>
</html>
END_HTML

# modify so we can look at lang="" field
# Ex: /<script[^>]*>/ Character class is anything not the '>' character
#if($string =~ /<script([\s+\w\W])*>([\w|\W|\s|\r]*)<\/script>/)
if($string =~ /<script\s+([^>]*)>([\w|\W|\s|\r]*)<\/script>/)
{
	print "Script found\n";
	print $1 if defined $1;
	print $2 if defined $2;

	if(defined $1)
	{
		print "Language found\n";
		print "$1\n";
		my $lang = $1;
		if($lang =~ /[\s]*lang[\s]*=[\s]*"([\w]+)"/)	
		{ 
			print "Language is: $1\n";
		}
		#if($lang =~ /lang="(.*)"/) {
		#	print "Language is: $1\n";
		#}
	}

}

