print "Please enter a file name\n";
chomp ($filename=<STDIN>);

read_file($filename);

sub read_file {
open(my $infile, '<' , @_)
  or die "Could not open @_, please make sure a file named @_ \ncontaining your input is in the same directory as the program before running it\n";

@file=<$infile>;
print "@file";
}
