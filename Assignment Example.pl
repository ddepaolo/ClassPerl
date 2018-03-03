#!C:\Dwimperl\perl\bin\perl.exe
# Damon DePaolo
# pgm=d_depaolo_assignment6.pl

#use strict;
#use warnings;
#use diagnostics;

TODO: { 
	local $TODO = 'Figure out how to avoid random order'; 
	my @have = unique( 2, 3, 5, 4, 3, 5, 7 ); 
	my @want = ( 2, 3, 5, 4, 7 ); 
	is_deeply @have, @want, 
	'unique() should return unique() elements in order'; 
} 

sub unique { 
	my @array = @_; 
	my %hash = map { $_ = > 1 } @array; 
	return keys %hash; 
} 
	
