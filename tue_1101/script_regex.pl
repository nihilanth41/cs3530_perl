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
<script>

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

if($string =~ /<script>([\w|\W|\s|\r]*)<\/script>/)
{
	print "Found\n";
	print $1 if defined $1;
}

