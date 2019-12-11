use strict;
use warnings;
use English;
use File::Basename;
use File::Spec::Functions;

sub main {
    my $text = 'DN-12434-abcxyz';

    if ($text =~ m/DN-(\d{5})-([a-z]{3,6})/) {
        print "$1 $2\n";
    }

}

main();