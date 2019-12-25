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
    my $h = <$INPUT>;
    chomp($h);
    my @header = split(/\s*,\s*/, $h);

    print Dumper(@header);

    my @data;
    while (<$INPUT>) {
        chomp($_);
        my @values = split(/\s*,\s*/, $_);
        my %values = ();
        for my $i (0..@header - 1) {
            $values{$header[$i]} = $values[$i];
        }
        push(@data, \%values);
    }

    close($INPUT);

    print $data[-1]{'Name'} . "\n";

    foreach my $line (@data) {
        print Dumper($line);
        print "Name: $line->{'Name'}\n";
    }

    print join("\t|\t", %{$data[0]});
}

main();