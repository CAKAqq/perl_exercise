#!/usr/bin/perl -w
$proteinfilename='proteinfragment.pep';
open my $PROTEINFILE,'<',$proteinfilename or die "$0:failed to open input file '$proteinfilename':$!\n";
@protein = <$PROTEINFILE>;
print @protein;
close $PROTEINFILE or warn "$0:failed to close input file '$proteinfilename':$!\n";
exit;
