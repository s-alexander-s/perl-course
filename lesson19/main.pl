use strict;
use warnings;

use Data::Dumper;

sub main {
    my %food = (
        'mice'  => 'cheese',
        'dogs'  => 'meat',
        'birds' => 'seeds',
    );

    while (my ($k, $v) = each %food) {
        print "$k: $v\n";
    }

    for my $i (values %food) {
        print "$i\n";
    }

    my @animals = keys %food;

    print Dumper(@animals);

    for my $k (@animals) {
        print "$k: $food{$k}\n";
    }

    for my $k (sort keys %food) {
        print "$k: $food{$k}\n";
    }
}

main();
