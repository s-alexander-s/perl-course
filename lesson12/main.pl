use strict;
use warnings;

sub main {
    my @emails = (
        'a@a.a',
        'bad@email',
        'valid123@e.mail',
        'my1@mail.ru',
        'abc@.google',
        '@gmail.com',
    );
    for my $email (@emails) {
        if ($email =~ m/^\w+@\w+\.\w+$/) {
            print("$email - OK\n");
        }
        else {
            print("$email - BAD\n");
        }
    }
}

main();
