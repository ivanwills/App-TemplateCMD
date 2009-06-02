#!/usr/bin/perl

use strict;
use warnings;
use Test::More;

# check that Test::Spelling is installed
eval { require Test::Spelling; Test::Spelling->import() };

# now check that the spell command is installed
my $found;
for my $dir ( split /:/, $ENV{PATH} ) {
	next if !-d $dir;
	next if !-x "$dir/spell";

	$found = 1;
	last;
}

plan skip_all => "Test::Spelling required for testing POD spelling" if $@;
plan skip_all => "spell cmd required for testing POD spelling" if !$found;

add_stopwords(qw/
	YAML NSW Hornsby templatecmd Arg arg var vars XHTML html CGI min Gtk dir fullname ttk txt pl funcs isa obj sig sigs
	MathML
	Param
	SVG
	TODO
	criticise
	perlcriticrc
	svg
/);
all_pod_files_spelling_ok();
