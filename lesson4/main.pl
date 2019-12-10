use strict;
use warnings;

$|=1;

sub main {
    my $file = 'C:\Users\alexander\cloud-disk\perl-5-by-doing-it\image.png';
    my @files = (
        $file,
        'C:\Users\alexander\cloud-disk\perl-5-by-doing-it\home.html',
        'C:\Users\alexander\cloud-disk\perl-5-by-doing-it\missing.txt',
    );

    foreach my $file(@files) {
        if (-f $file) {
            print "File found: $file\n";
        }
        else {
            print "File not found: $file\n";
        }
    }
}

main();
1;