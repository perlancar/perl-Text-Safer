package Text::Safer::alphanum_snake_lc;

use 5.010001;
use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

our %META = (
    summary => 'Like alphanum_snake, but additionally lower case',
    args => {
    },
);

sub encode_safer {
    my ($text, $args) = @_;
    $args //= {};

    $text =~ s/[^A-Za-z0-9]+/_/g;
    lc $text;
}

1;
# ABSTRACT:

=head1 SYNOPSIS


=head1 DESCRIPTION


=head1 FUNCTIONS

=head2 encode_safer

Arguments:

=over

=back

=cut
