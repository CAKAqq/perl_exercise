#!/usr/bin/perl -w
use strict;
my @arr=('A','C','G','T');
srand (time| $$);
my @new_arr=randomarray(@arr);
print "The new array is : @new_arr\n";
exit;
sub randomarray{
my (@arr)=@_;
my $len = scalar @arr;
my @new_arr;
for (my $i=0;$i< $len;$i++){
my ($position)=rand @arr;
my $base = $arr[$position];
push (@new_arr,$base);
splice(@arr,$position,1);
}
return @new_arr;
}
