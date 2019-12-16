use strict;
use warnings;
use Data::Dumper;
use English;
use File::Basename;
use File::Spec::Functions;

sub main {
    my $basedir = dirname(__FILE__);
    my $input = catfile($basedir, 'test.csv');
    my $INPUT = undef;
    unless (open($INPUT, '<', $input)) {
        die("Can't open $input: $OS_ERROR.\n");
    }

    # Read header
    <$INPUT>;

    while (<$INPUT>) {
        chomp($_);
        my @values = split(/\s*,\s*/, $_);
        print(Dumper(@values));
    }

    close($INPUT);
}

main();