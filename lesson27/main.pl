use strict;
use warnings;
use Data::Dumper;

use LWP::Simple;

sub main {
    my $content = get("https://en.wikipedia.org/wiki/Main_Page");
    unless (defined $content) {
        die "Cannot get url\n";
    }
    while ($content =~ m'<a\s+[^>]+href="([^"]+)"[^>]*>([^<]*)</a>'g) {
        print $1, ": ", $2 . "\n";
    }
}

main();