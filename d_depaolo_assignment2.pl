#!C:\Dwimperl\perl\bin\perl.exe
# Damon DePaolo
# pgm=d_depaolo_assignment2.pl

use strict;
use warnings;
use diagnostics;

my $i;
my @colors = ( 'red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet', 'black', 'grey', 'white');

print "Position and Value in the COLORS array:\n";
foreach my $i (0..$#colors) 
{
  print "Position $i - $colors[$i]\n";
}
