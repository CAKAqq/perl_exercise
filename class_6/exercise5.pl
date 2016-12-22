#!/usr/bin/perl -w
use strict;
my $code = 'ACG';
srand(time|$$);
my $position = randomposition($code);
my @bases = ('A','G','C','U');
my $nucle=randombases (@bases);
my $newcode=mutant ($code);
print "This is the mutantcode: $newcode\n\n";
exit;
sub randomposition {
my ($string)=@_;
return int(rand(length($string)));
}
sub randombases {
my (@nucs) = @_;
return $nucs[rand @nucs];
}
sub mutant {
my ($code)=@_;
my (@bases) = ('A','G','C','U');
my ($position)=randomposition ($code);
my ($newbase)=randombases(@bases);
substr ($code,$position,1,$newbase);
return $code;
}

