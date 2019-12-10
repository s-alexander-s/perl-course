our $VERSION = 1.0;
use strict;
use warnings;

use LWP::Simple;

sub main {
    print "Downloading ...\n";
    # print get("https://caveofprogramming.com/");
    # getstore("https://caveofprogramming.com/", "home.html");
    my $code = getstore('https://caveofprogramming.com/images/mysql-course.png', 'image.png');
    if ($code == 200) {
        print "Success\n"
    }
    else {
        print "Failed\n"
    }
    print "Finished\n";
}

main();
1;
