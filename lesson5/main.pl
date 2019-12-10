use strict;
use warnings;
use File::Basename;
use File::Spec::Functions;

sub main {
    my $basedir = dirname(__FILE__);
    my $file = catfile($basedir, 'mymanjeeves.txt');
    open(INPUT, $file) or die("Input file $file not found.\n");

    while (my $line = <INPUT>) {
        if ($line =~ / egg /) {
            print $line;
        }
    }

    close(INPUT);
}

main();