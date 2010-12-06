use strict;
use Test::More tests => 1;

use lib "t/lib";

package Mock::Pages;
use parent qw(Sledge::TestPages);
use Sledge::Template::Xslate ({
  syntax => 'TTerse',
  module => ['Text::Xslate::Bridge::TT2Like'],
});

my $data = <<DATA
Hello world!
DATA
    ;

sub dispatch_name {
    my $self = shift;
    $self->tmpl->set_option(filename => \$data);
}

use vars qw($TMPL_PATH);
$TMPL_PATH = "t/template";

package main;

my $p = Mock::Pages->new();
$p->dispatch("name");
my $output = $p->output;
like $output, qr/Hello world!/, $output;
