#!C:\Dwimperl\perl\bin\perl.exe
# Damon DePaolo
# pgm=d_depaolo_assignment4.pl

use strict;
use warnings;
use diagnostics;

print "Please input a series of numbers seperated by spaces:\n";

# take teh numbers from one line of STDIN and save them in an array
my @numbers = split(/\s+/, <>);

#call a subroutine to calculate the mean
my $avg_of_numbers = calculate_mean(@numbers);

print "The average is: $avg_of_numbers \n";
print "These numbers you input are above the average of all input numbers: \n";

#for each input number, call a subroutine to determine if it is greater than the mean
foreach my $number (@numbers)
{
	check_against_average ($number)
}


# This way of identifying what elements in the input array are greater than the average seems cleaner to me,
# however I commented it out since we are working with subroutines so I changed it to perfomr a check in a sub on an item by item basis
# my @above_average = grep {$_ > $avg_of_numbers} @numbers;
# foreach my $above_average (@above_average)
# {
	# print "$above_average \n";
# }


sub calculate_mean 
{
	my $sum_of_numbers = 0;
	my $count_of_numbers = @_;
	foreach $_ (@_) 
	{
		$sum_of_numbers = $sum_of_numbers + $_;
	}
	return $sum_of_numbers / $count_of_numbers;
}		

sub check_against_average
{
	my $check = $_[0];
	if ($check > $avg_of_numbers)
	{
		print "$check \n";
	}
}