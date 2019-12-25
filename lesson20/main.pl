use strict;
use warnings;

use Data::Dumper;

sub main {
    my %hash1 = (
        'cat'   => 'meat',
        'birds' => 'seeds',
        'fish'  => 'worms'
    );

    my @test;

    push @test, \%hash1;

    print Dumper(@test);

    print $test[0] . "\n";
    print $test[0]{'birds'} . "\n";
}

main();
