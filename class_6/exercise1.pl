#!/usr/bin/perl -w
use strict;
print "Please input an AA: ";
my $amino_acid = <STDIN>;
chomp $amino_acid;
my @AAbank = ('Gly','Ser','Tyr','Pro','Leu');
srand ( time | $$);
my $position = randomAA(@AAbank);
my $base=splice(@AAbank,$position,1);
print "I guess the AA is : $base\n";
sub randomAA {
my ($AA)=@_;
return int(rand (length $AA));
}

