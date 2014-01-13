#!/usr/bin/perl -w
use strict;

local $/; # enable localized slurp mode
my $content = <>;

$content =~ s/\r\n(\r\n)+/####/g;
$content =~ s/\r\n/ /g;
$content =~ s/([.!?])\s+([A-Z])/$1####$2/g; # \s is for Space
$content =~ s/([.!?]")\s+([A-Z])/$1####$2/g; # end of quote
$content =~ s/([.!?])\s+(\"[A-Z])/$1####$2/g; # start of quote

$content =~ s/([MD]rs?\.)####([A-Z])/$1 $2/g; # Mr. Mrs. Dr.

my @x = split(/####/, $content); 
my $y = join(" ####\n", @x);
print $y;
