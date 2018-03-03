#!C:\Dwimperl\perl\bin\perl.exe
# Damon DePaolo
# pgm=d_depaolo_assignment3.pl

use strict;
use warnings;
use diagnostics;

my $var1 = 0;
my $i = 0;
my $rand_num = 0;

#Loop 5 times, generating random number and adding to sum variable ($var1)
for my $i (1..5)
{
        my $rand_num = 1 + int rand(50);
        $var1 = $var1 + $rand_num;
	print "$rand_num\n";
}

# display sum of the 5 random numbers
print "The Sum = $var1\n";