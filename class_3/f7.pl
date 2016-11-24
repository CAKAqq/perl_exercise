#!/usr/bin/perl -w
@bases=('A','C','T','G');
splice (@bases,0,4,'N');
print "\n@bases\n";
exit;
