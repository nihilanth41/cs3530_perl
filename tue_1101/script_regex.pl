#!/usr/bin/perl
use strict;
use warnings;

# http://perlmaven.com/here-documents

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

