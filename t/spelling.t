#!/usr/bin/perl

use strict;
use warnings;
use Test::More;

eval { require Test::Spelling; Test::Spelling->import() };

plan skip_all => "Test::Spelling required for testing POD coverage" if $@;

add_stopwords(qw/YAML NSW Hornsby templatecmd Arg arg var vars XHTML html CGI min Gtk dir fullname ttk funcs isa obj sig sigs/);
all_pod_files_spelling_ok();
