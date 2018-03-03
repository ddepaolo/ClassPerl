read_file();

sub read_file {

    print "Please enter a file name\n";

    chomp ($filename=<STDIN>);

    open(my $infile, '<' , $filename)

      or die "Could not open $filename, please make sure a file named $filename \ncontaining your input is in the same directory as the program before running it\n";

    @file=<$infile>;

    print @file;

}