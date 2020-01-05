use strict;
use warnings;

use Data::Dumper;
use Getopt::Std;


sub main {
    my %opts;
    print 'Initial args: ', Dumper(\@ARGV);
    getopts('af:o:', \%opts);
    print 'Args without flags: ', Dumper(\@ARGV);
    print 'Args with flags: ', Dumper(\%opts);

    my $file_name = $opts{f};
    print "File name is: $file_name\n";
}


main();