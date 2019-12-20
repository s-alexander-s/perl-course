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

    my @lines;
    while (<$INPUT>) {
        chomp($_);
        my @values = split(/\s*,\s*/, $_);
        push(@lines, \@values);
    }

    close($INPUT);

    print $lines[-1][0] . "\n";

    foreach my $line (@lines) {
        print Dumper($line);
        print "Name: $line->[0]\n";
    }

    print join("\t|\t", @{$lines[0]});
}

main();