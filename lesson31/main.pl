use strict;
use warnings;

use Data::Dumper;
use Getopt::Std;

sub validate_arguments {
    return 0;
}
=pod
Print arguments hint with example
Args: no
Returns: nothing
=cut
sub print_arguments_hint {
    print <<USAGE;
usage: perl main.pl -f <file name> -a -o <output>
    -f <file name>  - file name
    -a              - all
    -o <output>     - output mode

example: perl main.pl -f test.xml -a -o file
USAGE
}

sub main {
    my %opts;

    getopts('af:o:', \%opts);

    if (not validate_arguments()) {
        print_arguments_hint();
    }
}


main();