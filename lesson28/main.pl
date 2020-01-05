use strict;
use warnings;
use Data::Dumper;

use LWP::Simple;

sub main {
    my $content = get("https://en.wikipedia.org/wiki/Main_Page");
    unless (defined $content) {
        die "Cannot get url\n";
    }

    my %classes = map {$_ => 1} map {split /\s+/, $_} $content =~ m/class="([^"']*?)"/ig;

    print Dumper(keys %classes);
}

main();