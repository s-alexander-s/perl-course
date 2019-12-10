use strict;
use warnings;
use English;
use File::Basename;
use File::Spec::Functions;

sub main {
    my $basedir = dirname(__FILE__);
    my $file = catfile($basedir, 'mymanjeeves.txt');
    open(my $INPUT, '<', $file) or die("Can't open $file: $OS_ERROR.\n");

    while (my $line = <$INPUT>) {
        if ($line =~ / egg /) {
            print $line;
        }
    }

    close($INPUT);
}

main();