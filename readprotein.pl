#!/usr/bin/perl -w
$proteinfilename='proteinfragment.pep';
open my $PROTEINFILE,'<',$proteinfilename or die "$0:failed to open input file '$proteinfilename':$!\n";
$protein = <$PROTEINFILE>;
print "here is the first line of protein:\n\n";
print "$protein\n\n";
$protein = <$PROTEINFILE>;
print "here is the second line of protein:\n\n";
print "$protein\n\n";
$protein = <$PROTEINFILE>;
print "here is the third line of protein:\n\n";
print "$protein\n\n";
close $PROTEINFILE or warn "$0:failed to close input file '$proteinfilename':$!\n";
exit;
