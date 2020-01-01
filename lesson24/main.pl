use strict;
use warnings;
use Data::Dumper;
use English;
use File::Basename;
use File::Spec::Functions;
use List::Util qw(sum);
use List::MoreUtils qw(zip);

sub main {
    my $dir_name = dirname(__FILE__);
    open my $INPUT, '<', catfile($dir_name, 'test.csv') or die "Cannot open input file!\n";

    my @data;
    my $header = <$INPUT>;
    chomp $header;
    my @header = split /\s*,\s*/, $header;
    my $i = 1;
    while (my $line = <$INPUT>) {
        $i++;
        chomp $line;
        $line =~ m/\S+/ or print "Line $i is blank, skipping it.\n" and next;
        $line =~ s/^\s+|\s+$//g;
        my @values = split /\s*,\s*/, $line;
        @values = map {$_ =~ s/\$|\?|approx.\s*//g; $_} @values;
        @header == @values or print "Not enough values in line $i.\n" and next;
        my %line_data = zip @header, @values;
        push @data, \%line_data;
    }
    print Dumper(@data);

    my $total_payment = sum map { $_->{'Payment'} } @data;
    print "Total payment is $total_payment\n";

}

main();