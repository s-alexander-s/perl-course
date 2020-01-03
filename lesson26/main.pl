use strict;
use warnings;


sub main {
    print 'The 39 steps' =~ m/(\d+)/, "\n";
    print 'The 39 steps' =~ m/([0-9]+)/, "\n";
    print 'The 39 steps - a GREAT book' =~ m/([A-Z]+)/, "\n";
    print join(', ', 'The 39 steps - a GREAT book' =~ m/([A-Z]+)/g), "\n";
    print join(', ', 'The 39 steps - a GREAT book' =~ m/([A-Z]{2,})/g), "\n";
    print join(', ', 'The 39 steps - a GREAT book - Colours_15' =~ m/([A-Za-z_][A-Za-z0-9_]*)/g), "\n";
    print 'The 39 steps - a GREAT book - Colours_15 ==%==' =~ m/([=%]+)/, "\n";
    print 'The 39 steps - a GREAT book - Colours_15 ==%== ABCBCABCBABACABBACB' =~ m/\b([ABC]+)\b/, "\n";
    print join(', ', 'The 39 steps - a GREAT book - Colours_15 ==%== ABCBCABCBABACABBACB' =~ m/\b([^A-Z\s]+)\b/g), "\n";
}

main();