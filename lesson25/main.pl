use strict;
use warnings;
use Data::Dumper;

use LWP::Simple;

sub main {
    my $content = get("https://en.wikipedia.org/wiki/Main_Page");
    unless (defined $content) {
        die "Cannot get url\n";
    }

    for ($content =~ m'<img[^>]+src="([^"]+)"'g) {
        print $_ . "\n";
    }
}

main();