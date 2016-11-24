#!/usr/bin/perl -w
@bases=('A','C','T','G');
$base1= pop @bases;
unshift (@bases,$base1);
print "@bases\n\n";
