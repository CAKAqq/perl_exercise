#!/usr/bin/perl -w
use strict;
my @nucs=('A','T','C','G');
srand (time | $$);
my $chose=rand @nucs;
do {
print "Please input the nucleotide you guess: ";
my $input=<STDIN>;
chomp $input;
if ($input=~ /$chose/){
print "Yes!You are smart!";
}
else {
print "Sorry! please try again!";
}until ($input=~ /$chose/);
exit;
