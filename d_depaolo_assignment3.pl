#!C:\Dwimperl\perl\bin\perl.exe
# Damon DePaolo
# pgm=d_depaolo_assignment3.pl

use strict;
use warnings;
use diagnostics;

our $str_continue = "";
our $rand_num = 0;
our $control = "y";

# This While loop will iterate until the user does not want any more sets
while (1)
{
	our $i = 0;
	our $var1 = 0;
	# loop through generation of five random numbers, adding them to $var1
	for $i (1..5)
	{
		$rand_num = 1 + int rand(50);
		$var1 = $var1 + $rand_num;
		$i++;
		print "$rand_num\n";
	}
	
	# display sum of the 5 random numbers
	print "The Sum = $var1\n\n";

	# Ask the user if they would like another set of random numbers
	print "Would you like to generate another set? (enter 'y' for more): ";
	$str_continue = <STDIN>;
	chomp $str_continue;
	# if they do not enter 'y', exit the loop
	if ($str_continue ne 'y'){last;}

} 