#!C:\Dwimperl\perl\bin\perl.exe
# Damon DePaolo
# pgm=d_depaolo_assignment8.pl

use strict;
use warnings;
use diagnostics;

#open the input and output files.  If the input file cannot be opened, give an error message
open(my $infile, '<' , 'INPUTWK8.txt')
	or die "Could not open 'INPUTWK8.txt', please make sure a file named 'INPUTWK8.txt' 
	containing your input is in the same directory as the program before running it\n";
open(my $outfile, '>' , 'output.txt');

my $characters = 0;
my $words = 0;

while (<$infile>) {
    $characters += length($_);
    $words += scalar(split(/\s+/, $_));
}

print "Check 'output.txt' for the number of characters and words in this file\n";
print $outfile "The number of characters in the file = $characters\n";
print $outfile "The number of words in the file = $words\n";