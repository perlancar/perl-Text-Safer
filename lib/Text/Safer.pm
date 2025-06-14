package Text::Safer;

use 5.010001;
use strict;
use warnings;

use Exporter qw(import);

# AUTHORITY
# DATE
# DIST
# VERSION

our @EXPORT_OK = qw(encode_safer);

sub encode_safer {
    my ($text, $encoding, $encoding_args) = @_;
    $encoding //= "alphanum_kebab_nodashend_lc";
    $encoding_args //= {};

    my $module = "Text::Safer::$encoding";
    (my $module_pm = "$module.pm") =~ s!::!/!g;
    require $module_pm;

    no strict 'refs'; ## no critic: TestingAndDebugging::ProhibitNoStrict
    &{"$module\::encode_safer"}($text, $encoding_args);
}

1;
# ABSTRACT: Convert text with one of several available methods, usually to a safer/more restricted encoding, e.g. for filenames

=head1 SYNOPSIS

 use Text::Safer qw(encode_safer);

 my $safer1 = encode_safer("Foo bar. baz!!!");                       # "foo-bar-baz", default encoding is "alphanum_kebab_nodashend_lc"
 my $safer2 = encode_safer("Foo bar!!!", "alphanum_snake");          # "Foo_bar_"
 my $safer3 = encode_safer("Foo bar!!!", "alphanum_snake", {lc=>1}); # "foo_bar_"


=head1 DESCRIPTION


=head1 FUNCTIONS

=head2 encode_safer

Usage:

 my $result = encode_safer($text [ , $encoding [ , \%encoding_args ] ]);


=head1 SEE ALSO

CLI interface: L<safer> from L<App::safer>.
