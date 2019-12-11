use strict;
use warnings;
use English;
use File::Basename;
use File::Spec::Functions;

sub main {
    my $basedir = dirname(__FILE__);
    my $file = catfile($basedir, 'mymanjeeves.txt');
    my $output = catfile($basedir, 'output.txt');
    open(my $INPUT, '<', $file) or die("Can't open input $file: $OS_ERROR.\n");
    open(my $OUTPUT, '>', $output) or die("Can't open output $output: $OS_ERROR.\n");

    while (my $line = <$INPUT>) {
        if ($line =~ m/\begg\b/) {
            print $OUTPUT $line;
        }
    }

    close($INPUT);
    close($OUTPUT);
}

main();