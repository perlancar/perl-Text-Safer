package Text::Safer::alphanum_snake;

use 5.010001;
use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

our %META = (
    summary => 'Replace sequences of non-alphanumeric characters (including dashes) with a single underscore, e.g. Foo-Bar_Baz!!!Qux-. -> Foo_Bar_Baz_Qux_',
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
# ABSTRACT:

=head1 SYNOPSIS


=head1 DESCRIPTION


=head1 FUNCTIONS

=head2 encode_safer

Arguments:

=over

=item * lc

=back

=cut
