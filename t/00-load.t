#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'App::TemplateCMD' );
}

diag( "Testing App::TemplateCMD $App::TemplateCMD::VERSION, Perl $], $^X" );
