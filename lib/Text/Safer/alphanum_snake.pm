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

- Multiple non-alphanumeric characters are converted to a single underscore
- Dashes are converted to underscore


=head1 FUNCTIONS

=head2 encode_safer

Arguments:

=over

=item * lc

=back

=cut
