# Damon DePaolo
# pgm=assignment1

my $var1;

$var1= 1 + 2 + 3 + 4 + 5;

my $var2;
my $i = 1;

for my $i (1..5)
{
	print "Enter a number:\n";
        my $num_in = <STDIN>;
#        chomp $num_in;
        $var2 = $var2 + $num_in;
	$i++;
}

print "sum = $var2\n";