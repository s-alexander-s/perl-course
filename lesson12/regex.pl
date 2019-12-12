use strict;
use warnings;

sub main {
    my $text = 'The code for this device is GP8765.';
    if ($text =~ m/(\w{2}\d{4})/){
        print "Found code: $1\n";
    }
    else {
        print "Code not found\n";
    }
    if ($text =~ m/is (\S+?)\./){
        print "Found code: $1\n";
    }
    else {
        print "Code not found\n";
    }
    if ($text =~ m/is (\w{2}\d{2,6})\./){
        print "Found code: $1\n";
    }
    else {
        print "Code not found\n";
    }
}

main();
