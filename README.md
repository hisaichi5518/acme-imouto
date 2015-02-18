# NAME

Acme::Imouto - Imouto means small sister.

# SYNOPSIS

    use Acme::Imouto;

    my $imouto = Acme::Imouto->new($your_object)
    if ($imouto->is_imouto) {
      print "$imouto is imouto\n";
    }

Other way

    use Acme::Imouto "imouto";

    my $imouto = imouto $your_object

# DESCRIPTION

Acme::Imouto is joke module for Imouto lover.

## Exports

The following functions are exported only by request.

    ane
    imouto

# METHODS

- is\_ane


    Examin that the objec is ane.

- is\_imouto


    Examin that the objec is imouto.

- is\_kawaii


    Return 1 if imouto is cute.

# LICENSE

Copyright (C) hisaichi5518.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

hisaichi5518 <hisaichi5518@gmail.com>
