package Text::Safer::alphanum_kebab;

use 5.010001;
use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

our %META = (
    summary => 'Replace sequences of non-alphanumeric characters (underscores not included) with a single dash, e.g. Foo_Bar!!!Baz. -> Foo_Bar-Baz-',
    args => {
        lc => {
            schema => 'bool*',
        },
    },
);

sub encode_safer {
    my ($text, $args) = @_;
    $args //= {};

    $text =~ s/[^A-Za-z0-9_-]+/-/g;
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
