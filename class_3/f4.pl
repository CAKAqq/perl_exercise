#!/usr/bin/perl -w
@bases=('A','C','T','G');
$base1=shift @bases;
push (@bases,$base1);
print "\n@bases\n\n";
exit;
