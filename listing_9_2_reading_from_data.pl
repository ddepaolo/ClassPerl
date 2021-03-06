use strict;
use warnings;
use diagnostics;

use Data::Dumper;

my %config;

while (<DATA>) {
    next if /^\s*#/;                    # skip comments
    next unless /(\w+)\s*=\s*(\w+)/;    # key = value

    my ( $key, $value ) = ( $1, $2 );

    if ( exists $config{$key} ) {

        # we've already seen this key, so convert the value to an
        # array reference

        # Does $config{$key} currently store a scalar or an array reference?
        if ( !ref $config{$key} ) {
            $config{$key} = [ $config{$key} ];
        }

        push @{ $config{$key} } => $value;
    }
    else {
        $config{$key} = $value;
    }
}
print Dumper( \%config );
__DATA__
# max_tries = 3
max_tries = 2
timeout   = 30

# only these people are OK
user = Ovid
user = Sally
user = Bob
