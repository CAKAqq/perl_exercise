#!/usr/bin/perl -w
%classification = (
'dog' => 'mammal',
'robin' => 'bird',
'asp' => 'reptile',
);
@keys = keys %classification;
$countkeys = keys %classification;
@values = values %classification;
$countvalues = values %classification;
print "This are all the keys:@keys\n";
print "This is the count of keys:$countkeys\n";
print "This are all the values:@values\n";
print "This is the count of values:$countvalues\n";
while (($key,$value) = each %classification){
print "$key => $value\n";
}
exit;


