#!C:\Dwimperl\perl\bin\perl.exe
# Damon DePaolo
# pgm=d_depaolo_assignment1.pl

# declare variables
my $var1;    # variable to store sum of input
my $i = 1;   # index for loop - initialized to start at 1 for readibility
my $num_in;  # variable to store input

# perform loop to request user input 5 times, and keep a running sum of the input numbers
for my $i (1..5)
{
	print "Enter a number:\n";
        my $num_in = <STDIN>;
        $var1 = $var1 + $num_in;
	$i++;
}

# display sum of the 5 input numbers
print "The Sum = $var1\n";