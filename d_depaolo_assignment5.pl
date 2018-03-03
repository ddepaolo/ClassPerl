#!C:\Dwimperl\perl\bin\perl.exe
# Damon DePaolo
# pgm=d_depaolo_assignment5.pl

use strict;
use warnings;
use diagnostics;

my $in_rec = '';

#open the input and output files.  If the input file cannot be opened, give an error message
open(my $infile, '<' , 'input.txt')
	or die "Could not open 'input.txt', please make sure a file named 'input.txt' 
	containing your input is in the same directory as the program before running it\n";
open(my $outfile, '>' , 'output.txt');

# search each line for the word 'new' no matter of case and replace with 'old' then write to the output.  
#/ig ensures it is case in-sensitive, and iterates to find all occurences
while (my $in_rec = <$infile>) 
{
  chomp $in_rec;
  $in_rec =~ s/new/old/ig;
  print $outfile "$in_rec\n";
}

print "Please check the directory you executed this program from for your output, 'output.txt'\n";