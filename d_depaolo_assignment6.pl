#!C:\Dwimperl\perl\bin\perl.exe
# Damon DePaolo
# pgm=d_depaolo_assignment6.pl

use strict;
use warnings;
use diagnostics;

print "Please input a series of numbers seperated by spaces:\n";

# take the numbers from one line of STDIN and save them in an array
my @numbers = split(/\s+/, <>);

# use the modulus operator to determine if there is a remainder after dividing each fallue in the array by 2 (if yes, the number is odd and store in new array)
my @odd_numbers = grep {$_ % 2} @numbers;

# print the new array, numerically sorted 
print "\nHere is a list of the odd numbers you entered, sorted numerically:\n";
print join "\n", sort { $a <=> $b } @odd_numbers; 
print "\n";
