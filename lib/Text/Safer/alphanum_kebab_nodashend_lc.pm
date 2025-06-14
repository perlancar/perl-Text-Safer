package Text::Safer::alphanum_kebab_nodashend_lc;

use 5.010001;
use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

our %META = (
    summary => 'Like alphanum_kebab, but additionally lower case & remove dash at the beginning & end of text, e.g. "Foo Bar, Co., Ltd." -> "foo-bar-co-ltd"',
    args => {
    },
);

sub encode_safer {
    my ($text, $args) = @_;
    $args //= {};

    $text =~ s/[^A-Za-z0-9_-]+/-/g;
    $text =~ s/-\z//; $text =~ s/\A-//;
    $text = "-" if !length($text);
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
