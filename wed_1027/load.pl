#!/usr/bin/perl
use strict;
use warnings;

use LWP;
use HTTP::Request::Common;

($#ARGV == 0) or die "Usage: $0 [url]\n";

my $url = shift @ARGV;

print load($url);


sub load {
	my $url = shift @_;
	
	# local file or from web server?
	
	
	if ($url =~ /^file\:\/\//) {  # check if url begins with file://
		print "Found file.\n";
		# convert to file path
		$url =~ s/^file\:\/\///;
		return load_file($url);
	} elsif ($url =~ /^http\:\/\//) { # check if url begins with http://
		print "Found http url.\n";
		return load_http($url)
	} else {
		print "No match!\n";
		return "";
	}
}


sub load_file {
	my $path = shift @_;
	
	open(my $fh, '<:encoding(UTF-8)', $path) or die "Could not open'$path' $!";
	my $content = "";
	while (my $line = <$fh>) {
		$content .= $line;
  	}
  	
  	return $content;
}

sub load_http {
	my $url = shift @_;
	my $content = "";
	
	my $ua = LWP::UserAgent->new(agent => "parsepage/1.0 libwww-perl");
    my $req = HTTP::Request->new(GET => $url);
    
    my $resp = $ua->request($req, sub {
    	my($data, $response, $protocol) = @_;
    	$content = $data;
    });
    
    if (not $resp->is_success) {
    	print "http request failed.\n";
    	return $content;
    }
    
    print "http request succeeded.\n";
    return $content;
}


