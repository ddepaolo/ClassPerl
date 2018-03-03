#!C:\Dwimperl\perl\bin\perl.exe
# Damon DePaolo
# pgm=d_depaolo_assignment3.pl

use strict;
use warnings;
use diagnostics;

our $str_continue = "";
our $rand_num = 0;
our $control = "y";

while (1)
{
	our $i = 0;
	our $var1 = 0;
	for $i (1..5)
	{
		$rand_num = 1 + int rand(50);
		$var1 = $var1 + $rand_num;
		$i++;
		print "$rand_num\n";
	}
	
	# display sum of the 5 random numbers
	print "The Sum = $var1\n\n";

	print "Would you like to generate another set? (enter 'Y' for more): ";
	$str_continue = <STDIN>;
	chomp $str_continue;
	if ($str_continue ne 'Y'){last;}
	
	# while (1)
	# {
		# if ($str_continue ne 'N'){last;}
		# print "Please enter only Y or N \n";
		# $str_continue = <STDIN>;
		# chomp $str_continue;
	# }
} 