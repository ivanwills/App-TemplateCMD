#!/usr/bin/perl -w

BEGIN { $ENV{TESTING} = 1 }

use strict;
use warnings;
use Test::More tests => 1;

my $module = 'App::TemplateCMD::Command::Help';
use_ok( $module );


