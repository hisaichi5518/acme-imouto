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

    my $imouto = Acme::Imouto->new($your_object)
    if ($imouto->is_imouto) {
      print "$imouto is imouto\n";
    }

Other way

    use Acme::Imouto "imouto";

    my $imouto = imouto $your_object

=head1 DESCRIPTION

Acme::Imouto is joke module for Imouto lover.

=head2 Exports

The following functions are exported only by request.

    ane
    imouto

=head1 METHODS

=over 2

=item is_ane
X<is_ane>

Examin that the objec is ane.

=item is_imouto
X<is_imouto>

Examin that the objec is imouto.

=item is_kawaii
X<is_kawaii>

Return 1 if imouto is cute.

=back

=head1 LICENSE

Copyright (C) hisaichi5518.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

hisaichi5518 E<lt>hisaichi5518@gmail.comE<gt>

=cut
