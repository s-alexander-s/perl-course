use strict;
use warnings;
use File::Basename;
use File::Spec::Functions;

sub main {
    my $basedir = dirname(__FILE__);
    my $file = catfile($basedir, 'mymanjeeves.txt');
    print $file;
}

main();