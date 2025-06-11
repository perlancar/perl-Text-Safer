package Text::Safer::alphanum_kebab_nodashend_lc;

use 5.010001;
use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

our %META = (
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
# ABSTRACT: Convert text to a safer (e.g. more restricted) encoding using only lower alphanumeric and dash characters, avoid dash at the beginning/end of text

=head1 SYNOPSIS

 Input text             Output
 ----------             ------
 Foo Bar, Co., Ltd.     foo-bar-co-ltd


=head1 DESCRIPTION

- Multiple non-alphanumeric characters are converted to a single dash
- Underscores are not converted to dash


=head1 FUNCTIONS

=head2 encode_safer

Arguments:

=over

=item * lc

=back


=cut
