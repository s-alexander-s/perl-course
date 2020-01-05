use strict;
use warnings;

use Data::Dumper;
use Getopt::Std;

sub validate_arguments {
    return 0;
}

sub print_arguments_hint {
    print "Incorrect cmd arguments\n";
}

sub main {
    my %opts;

    getopts('af:o:', \%opts);

    if (not validate_arguments()) {
        print_arguments_hint();
    }
}


main();