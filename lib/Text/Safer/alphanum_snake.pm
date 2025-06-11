package Text::Safer::alphanum_snake;

use 5.010001;
use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

our %META = (
    args => {
        lc => {
            schema => 'bool*',
        },
    },
);

sub encode_safer {
    my ($text, $args) = @_;
    $args //= {};

    $text =~ s/[^A-Za-z0-9]+/_/g;
    $args->{lc} ? lc($text) : $text;
}

1;
# ABSTRACT: Convert text to a safer (e.g. more restricted) encoding using only alphanumeric and underscore characters

=head1 SYNOPSIS


=head1 DESCRIPTION


=head1 FUNCTIONS

=head2 encode_safer


=cut
