#!C:\Dwimperl\perl\bin\perl.exe
# Damon DePaolo
# pgm=d_depaolo_assignment2.pl

use strict;
use warnings;
use diagnostics;

my $i;
my @colors;
$colors[0] = 'red';
$colors[1] = 'orange';

print "Position and Value in the COLORS array:\n";
foreach my $i (0..$#colors) 
{
  print "Position $i - $colors[$i]\n";
}
