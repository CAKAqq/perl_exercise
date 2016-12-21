sub codon2aa {
my ($codon) = @_;
$codon = uc $codon;
my (%genetic_code)= (
'TCA'=> 'S',
'TCC'=> 'S',
'TCG'=> 'S',
'TCT'=> 'S',
'TTC'=> 'F',
'TTT'=> 'F',
'TTA'=> 'L',
'TTG'=> 'L',
'TAC'=> 'Y',
'TAT'=> 'Y',
'TAA'=> '_',
'TAG'=> '_',
'TGC'=> 'C',
'TGT'=> 'C',
'TGA'=> '_',
'TGG'=> 'W',
'CTA'=> 'L',
'CTC'=> 'L',
'CTG'=> 'L',
'CTT'=> 'L',
'CCA'=> 'P',
'CCC'=> 'P',
'CCG'=> 'P',
'CCT'=> 'P',
'CAC'=> 'H',
'CAT'=> 'H',
'CAA'=> 'Q',
'CAG'=> 'Q',
'CGA'=> 'R',
'CGC'=> 'R',
'CGG'=> 'R',
'CGT'=> 'R',
'ATA'=> 'I',
'ATC'=> 'I',
'ATT'=> 'I',
'ATG'=> 'M',
'ACA'=> 'T',
'ACC'=> 'T',
'ACG'=> 'T',
'ACT'=> 'T',
'AAC'=> 'N',
'AAT'=> 'N',
'AAA'=> 'K',
'AAG'=> 'K',
'AGC'=> 'S',
'AGT'=> 'S',
'AGA'=> 'R',
'AGG'=> 'R',
'GTA'=> 'V',
'GTC'=> 'V',
'GTG'=> 'V',
'GTT'=> 'V',
'GCA'=> 'A',
'GCC'=> 'A',
'GCG'=> 'A',
'GCT'=> 'A',
'GAC'=> 'D',
'GAT'=> 'D',
'GAA'=> 'E',
'GAG'=> 'E',
'GGA'=> 'G',
'GGC'=> 'G',
'GGG'=> 'G',
'GGT'=> 'G',
);
if(exists $genetic_code{$codon}){
return $genetic_code{$codon}
}else{
print STDEER "bad codon \"$codon\"!!\n";
exit;
}
}
sub dna2peptide {
my ($dna)=@_;
usr strict;
use warnings;
use BeginPerlBioinfo;
my $protein = '';
for (my $i=0;$i < (length($dna) - 2);$i += 3){
$protein .=codon2aa( substr($dna,$i,3));
}
return $protein;
}
5ub get_file_data {
my ($filename) =@_;
use strict;
use warnings;
my @filedata = ();
unless(open（GET_FILE_DATA,$filename)){
print STDERR "Cannot open file \"$filename\"\n\n";
exit;
}
@filedata = <GET_FILE_DATA>;
close GET_FILE_DATA;
return @filedata;
}
sub extract_sequence_from_fasta_data {
my (@fasta_file_data) = @_;
use strict;
use warnings;
my $sequence = '';
foreach my $line(@fasta_file_data) {
if ($line=~ /^\s*$/){
next;
}elsif($line =~ /^\s*#/){
next;
}else{
$sequence .=$line;
}
}
$sequence=~ s/\s//g;
return $sequence;
}
sub print_sequence {
my ($sequence,$length) = @_;
use strict;
use warnings;
for (my $pos = 0 ;$pos<length($sequence);$pos +=$length ){
print substr($sequence,$pos,$length),"\n";
}
}
sub revcom{
my ($dna) = reverse($dna);
$revcom =~ tr/ACGTacgt/TGCAtgca/;
return $revcom;
}
sub translate_frame {
my ($seq,$start,$end) =@_;
my ($protein)
unless ($send)
$end = length($seq);
}
return dna2peptide(substr ( $seq,$start - 1,$send -$start + 1));
}
1
