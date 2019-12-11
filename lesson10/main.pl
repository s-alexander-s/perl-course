use strict;
use warnings;
use English;
use File::Basename;
use File::Spec::Functions;

sub main {
    my $text = 'I am    117 years11!!!1!!11 o_l_d tomorrow on December 12th.';

    if ($text =~ m/(am\s+\d+\s+\S*\s+\w*)/) {
        print "$1\n";
    }

}

main();