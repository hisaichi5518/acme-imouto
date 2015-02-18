package Acme::Imouto;
use 5.008001;
use strict;
use warnings;

use Exporter "import";

our $VERSION = "0.01";
our @EXPORT_OK = qw( ane imouto );

sub new {
  my ($class, $object) = @_;
  bless {object => $object}, $class
}

sub is_ane { 0 }

sub is_kawaii { 1 }
sub is_imouto { 1 }

sub imouto {
  __PACKAGE__->new($_[0]);
}

sub ane {
  __PACKAGE__->new($_[0]);
}


sub AUTOLOAD {
  my $self = shift;
  my $meth = our $AUTOLOAD;
  $meth =~ s/.*:://;
  $self->{object}->$meth(@_);
}

1;
__END__

=encoding utf-8

=head1 NAME

Acme::Imouto - Imouto means small sister.

=head1 SYNOPSIS

    use Acme::Imouto;

    my $ane = Acme::Imouto->new($your_object)
    if ($ane->is_ane) {
      print "$ane is ane\n";
    }

Other way

    use Acme::Imouto "ane";

    my $ane = ane $your_object

=head1 DESCRIPTION

Acme::Imouto is joke module for Imouto lover.

=head2 Exports

The following functions are exported only by request.

    ane

=head1 METHODS

=over 2

=item is_ane
X<is_ane>

Examin that the objec is ane.

=back

=head1 LICENSE

Copyright (C) Tomohiro Nishimura.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

Tomohiro Nishimura E<lt>tomohiro68@gmail.comE<gt>

=cut
