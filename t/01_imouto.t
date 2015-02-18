use strict;
use warnings;
use Test::More 0.98;

package TestObj;
sub new {
  my $class = shift;
  bless +{}, $class;
}

package main;

use Acme::Imouto qw(ane imouto);

subtest "imouto is kawaii" => sub {
    is +imouto(TestObj->new)->is_ane, 0;
    is +imouto(TestObj->new)->is_imouto, 1;
    is +imouto(TestObj->new)->is_kawaii, 1;
};

done_testing;
