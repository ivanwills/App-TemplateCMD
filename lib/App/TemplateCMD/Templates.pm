package App::TemplateCMD::Templates;

# Created on: 2008-09-04 05:12:22
# Create by:  ivan
# $Id$
# $Revision$, $HeadURL$, $Date$
# $Revision$, $Source$, $Date$

use strict;
use warnings;
use version;

our $VERSION     = version->new('0.1.0');
our @EXPORT_OK   = qw//;
our %EXPORT_TAGS = ();

sub get_data {
    return *__PACKAGE__::DATA;
}

1;

=head1 NAME

App::TemplateCMD::Templates - Default templates for templatecmd to use.

=head1 VERSION

This documentation refers to App::TemplateCMD::Templates version 0.1.0.

=head1 SYNOPSIS

   use Template;
   use Template::Provider::FromDATA;
   use App::TemplateCMD::Templates;

   # Get the template provider
   my $provider = Template::Provider::FromDATA->new({
       CLASSES => 'App::TemplateCMD::Templates',
   });

   # Create the new template object
   my $template = Template->new({
       LOAD_TEMPLATES => [$provider],
   });

   # use the templates as desired

=head1 DESCRIPTION

This module exists to provide the default templates for App::TemplateCMD

=head2 Templates

=over 4

=item *

templates/css.css

=item *

templates/html.html

=item *

templates/licence.txt

=item *

templates/perl.pl

=item *

templates/php.php

=item *

templates/xhtml.html

=item *

templates/build/module

=item *

templates/css/file.css

=item *

templates/db/table.sql

=item *

templates/html/form.html

=item *

templates/html/script.html

=item *

templates/html/style.html

=item *

templates/html/table.html

=item *

templates/javadoc/file.tmpl

=item *

templates/javadoc/fn.tmpl

=item *

templates/javadoc/function.tmpl

=item *

templates/js/class.js

=item *

templates/js/func.js

=item *

templates/js/method.js

=item *

templates/licence/gpl.txt

=item *

templates/licence/lgpl.txt

=item *

templates/licence/perl.txt

=item *

templates/perl/AUTOLOAD.pl

=item *

templates/perl/exception.pl

=item *

templates/perl/find.pl

=item *

templates/perl/if.pl

=item *

templates/perl/package.pm

=item *

templates/perl/pod.pl

=item *

templates/perl/simple.pl

=item *

templates/perl/sub.pl

=item *

templates/perl/test.pl

=item *

templates/perl/timer.pl

=item *

templates/php/class.php

=item *

templates/w3c/xml.xml

=item *

templates/xml/cdata.xml

=item *

templates/db/table/dia.sql

=item *

templates/html/script/jquery.html

=item *

templates/js/func/object.js

=item *

templates/js/jdoc/class.js

=item *

templates/js/jdoc/func.js

=item *

templates/js/jdoc/params.js

=item *

templates/perl/exception/base.pl

=item *

templates/perl/package/Build.PL

=item *

templates/perl/package/Changes

=item *

templates/perl/package/LICENSE

=item *

templates/perl/package/MANIFEST

=item *

templates/perl/package/MANIFEST.SKIP

=item *

templates/perl/package/README

=item *

templates/perl/package/dia.pm

=item *

templates/perl/package/gtk2.pl

=item *

templates/perl/pod/DESCRIPTION.pl

=item *

templates/perl/pod/METHODS.pl

=item *

templates/perl/pod/NAME.pl

=item *

templates/perl/pod/SYNOPSIS.pl

=item *

templates/perl/pod/USAGE.pl

=item *

templates/perl/pod/VERSION.pl

=item *

templates/perl/pod/detailed.pl

=item *

templates/perl/pod/package.pl

=item *

templates/perl/sub/class.pl

=item *

templates/perl/sub/method.pl

=item *

templates/perl/sub/object.pl

=item *

templates/perl/test/00-load.t

=item *

templates/perl/test/boilerplate.t

=item *

templates/perl/test/critic.t

=item *

templates/perl/test/dia.t

=item *

templates/perl/test/kwalitee.t

=item *

templates/perl/test/manifest.t

=item *

templates/perl/test/pod-coverage.t

=item *

templates/perl/test/pod.t

=item *

templates/perl/test/spelling.t

=item *

templates/w3c/dtd/xhtml+mathml+svg

=item *

templates/w3c/dtd/HTML/2.0

=item *

templates/w3c/dtd/HTML/3.2

=item *

templates/w3c/dtd/MathML/1.01

=item *

templates/w3c/dtd/MathML/2.0

=item *

templates/w3c/dtd/SVG/1.0

=item *

templates/w3c/dtd/HTML/4.01/frameset

=item *

templates/w3c/dtd/HTML/4.01/strict

=item *

templates/w3c/dtd/HTML/4.01/transitional

=item *

templates/w3c/dtd/SVG/1.1/basic

=item *

templates/w3c/dtd/SVG/1.1/full

=item *

templates/w3c/dtd/SVG/1.1/tiny

=item *

templates/w3c/dtd/XHTML/1.0/basic

=item *

templates/w3c/dtd/XHTML/1.0/frameset

=item *

templates/w3c/dtd/XHTML/1.0/strict

=item *

templates/w3c/dtd/XHTML/1.0/transitional

=item *

templates/w3c/dtd/XHTML/1.1/basic

=item *

templates/w3c/dtd/XHTML/1.1/dtd

=back

=head1 SUBROUTINES/METHODS

=head2 C<get_data ()>

Returns the DATA file handle for this module

=head1 DIAGNOSTICS

=head1 CONFIGURATION AND ENVIRONMENT

=head1 DEPENDENCIES

=head1 INCOMPATIBILITIES

=head1 BUGS AND LIMITATIONS

There are no known bugs in this module.

Please report problems to Ivan Wills (ivan.wills@gmail.com).

Patches are welcome.

=head1 AUTHOR

Ivan Wills - (ivan.wills@gmail.com)

=head1 LICENSE AND COPYRIGHT

Copyright (c) 2009 Ivan Wills (14 Mullion Close, NSW, Australia 2077).
All rights reserved.

This module is free software; you can redistribute it and/or modify it under
the same terms as Perl itself. See L<perlartistic>.  This program is
distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.

=cut

__DATA__
__css.css__
/********************************************************************\
 *
 * created:		: [% date %]
 * description	:
 * last edit	:
 * web page		:
 *
\********************************************************************/

/*
[% INCLUDE licence.txt %]
*/
__html.html__
[% UNLESS title %][% title = 'Untitled Document' %][% END -%]
<!DOCTYPE html
	PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/html4.01-transitional.dtd">
<html>
	<head>
		<title>[% title %]</title>
		<meta http-equiv="Content-Type"     content="text/html; charset=utf-8">
		<meta http-equiv="Content-Language" content="en-au">
		<meta name="ROBOTS"      content="INDEX,FOLLOW"/>
		<meta name="author"      content="[% contact.fullname %]">
		<meta name="copyright"   content="Copyright (c) [% year %] [% contact.fullname %], All Rights Reserved">
		<meta name="description" content="">
		<meta name="keywords"    content="">
		<link href="/css/styles.css" rel="stylesheet" type="text/css" media="screen, print" />
		<style type="text/css">
		<!--/* <![CDATA[ */

		/* ]]> */-->
		</style>
		<script type="text/javascript" src="/js/jquery.js"></script>
		<script type="text/javascript" src="/js/code.js"></script>
		<script type="text/javascript">
		<!--/* <![CDATA[ */

		/* ]]> */-->
		</script>
	</head>
	<body>


	</body>
</html>
__licence.txt__

Copyright (c) [% year %] [% company.name or contact.fullname %] ([% company.address || contact.address %]).
All rights reserved.

[%- SWITCH licence -%]
[% CASE 'perl' -%]
[% INCLUDE licence/perl.txt -%]
[% CASE 'gpl'  -%]
[% INCLUDE licence/gpl.txt -%]
[% CASE 'lgpl' -%]
[% INCLUDE licence/lgpl.txt -%]
[% CASE -%]
[% INCLUDE licence/perl.txt -%]
[% END  -%]
__perl.pl__
[% IF not file %][% file     =  out     %][% END -%]
[% IF not file %][% file     = '<Name>' %][% END -%]
[% IF not module %][% module = file     %][% END -%]
#!/usr/bin/perl

# Created on: [% date %] [% time %]
# Create by:  [% contact.fullname or user %]
# $Id$
# $Revision$, $HeadURL$, $Date$
# $Revision$, $Source$, $Date$

use strict;
use warnings;
use version;
use Scalar::Util;
use List::Util;
#use List::MoreUtils;
use Getopt::[% IF alt %]Alt qw/get_options/[% ELSE %]Long[% END %];
use Pod::Usage;
use Data::Dumper qw/Dumper/;
use English qw/ -no_match_vars /;
use FindBin qw/$Bin/;
use Path::Class;

our $VERSION = version->new('0.0.1');
my ($name)   = $PROGRAM_NAME =~ m{^.*/(.*?)$}mxs;

my %option = (
	out     => undef,
	verbose => 0,
	man     => 0,
	help    => 0,
	VERSION => 0,
);

if ( !@ARGV ) {
	pod2usage( -verbose => 1 );
}

main();
exit 0;

sub main {

	[% IF alt %]
	my $opt = get_options(
		{
			default => \%option,
			helper  => 1,
		},
		[
			'out|o=s',
			'verbose|v+',
		],
	);
	[% ELSE %]
	Getopt::Long::Configure('bundling');
	GetOptions(
		\%option,
		'out|o=s',
		'verbose|v+',
		'man',
		'help',
		'VERSION!',
	) or pod2usage(2);
	#my $file = join ' ', @ARGV;

	if ( $option{'VERSION'} ) {
		print "$name Version = $VERSION\n";
		exit 1;
	}
	elsif ( $option{'man'} ) {
		pod2usage( -verbose => 2 );
	}
	elsif ( $option{'help'} ) {
		pod2usage( -verbose => 1 );
	}
	[% END %]

	# do stuff here


	return;
}

 =__DATA__

=head1 NAME

[% file %] - <One-line description of commands purpose>

[% INCLUDE perl/pod/VERSION.pl %]
[% INCLUDE perl/pod/USAGE.pl %]
[% INCLUDE perl/pod/DESCRIPTION.pl %]
[% INCLUDE perl/pod/METHODS.pl %]
[% INCLUDE perl/pod/detailed.pl %]
=head1 AUTHOR

[% contact.fullname %] - ([% contact.email %])

=head1 LICENSE AND COPYRIGHT
[% INCLUDE licence.txt %]
=cut
__php.php__
#!/usr/bin/php
<?php

/**
 *
 *
 */


?>
__xhtml.html__
[% UNLESS title %][% title = 'Untitled Document' %][% END -%]
[% INCLUDE w3c/xml.xml %]
<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
	<head>
		<title>[% title %]</title>
		<meta http-equiv="Content-Type"     content="text/html; charset=utf-8" />
		<meta http-equiv="Content-Language" content="en-au" />
		<meta name="ROBOTS"      content="INDEX,FOLLOW" />
		<meta name="author"      content="[% contact.fullname %]" />
		<meta name="copyright"   content="Copyright (c) [% year %] [% contact.fullname %], All Rights Reserved" />
		<meta name="description" content="" />
		<meta name="keywords"    content="" />
		<link href="/css/styles.css" rel="stylesheet" type="text/css" media="screen, print" />
		<style type="text/css">
		<!--/* <![CDATA[ */

		/* ]]> */-->
		</style>
		<script type="text/javascript" src="/js/jquery.js"></script>
		<script type="text/javascript" src="/js/code.js"></script>
		<script type="text/javascript">
		<!--/* <![CDATA[ */

		/* ]]> */-->
		</script>
	</head>
	<body>


	</body>
</html>
__build/module__
[% module = module || 'module' -%]
[% file     = module -%]
[% IF file.match('::') -%]
[%     file = file.replace('::', '/') -%]
[% END -%]
[% file = file _ '.pm' -%]
[% package  = module -%]
[% IF package.match('::') -%]
[%     package = package.replace('::', '-') -%]
[% END -%]
---
[% package %]/lib/[% file %]:
    template: perl/package
    arg:
    module: [% module %]
[% package %]/t/00-load.t:
    template: perl/test/00-load.t
    module: [% module %]
[% package %]/t/boilerplate.t:
    template: perl/test/boilerplate.t
    module: [% module %]
[% package %]/t/critic.t:
    template: perl/test/critic.t
    module: [% module %]
[% package %]/t/dia.t:
    template: perl/test/dia.t
    module: [% module %]
[% package %]/t/kwalitee.t:
    template: perl/test/kwalitee.t
    module: [% module %]
[% package %]/t/pod-coverage.t:
    template: perl/test/pod-coverage.t
    module: [% module %]
[% package %]/t/pod.t:
    template: perl/test/pod.t
    module: [% module %]
[% package %]/t/spelling.t:
    template: perl/test/spelling.t
    module: [% module %]
[% package %]/Build.PL:
    template: perl/package/Build.PL
    module: [% module %]
[% package %]/Changes:
    template: perl/package/Changes
    module: [% module %]
[% package %]/LICENSE:
    template: perl/package/LICENSE
    module: [% module %]
[% package %]/MANIFEST:
    template: perl/package/MANIFEST
    module: [% module %]
[% package %]/MANIFEST.SKIP:
    template: perl/package/MANIFEST.SKIP
    module: [% module %]
[% package %]/README:
    template: perl/package/README
    module: [% module %]
__css/file.css__
/********************************************************************\
 *
 * created:		: [% date %]
 * description	:
 * last edit	:
 * web page		:
 *
\********************************************************************/

/*
[% INCLUDE licence.txt %]
*/
__db/table.sql__
[% IF not table %][% table = '<Table>' %][% END -%]
-- Create the [% table %] table and initial contents

-- DROP TABLE [% table %];

CREATE TABLE [% table %] (
	[% table %]_id          SERIAL PRIMARY KEY,
	[% table %]_created     TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
	[% table %]_type_id     INTEGER REFERENCES [% table %]_type  ([% table %]_type_id ) NOT NULL,
	[% table %]_state_id    INTEGER REFERENCES [% table %]_state ([% table %]_state_id) NOT NULL,
	[% table %]             VARCHAR NOT NULL UNIQUE,
	[% table %]_description VARCHAR,
[% FOREACH column = columns -%]
	[% column %][% i = column.length %][% WHILE i <= 11 + table.length %][% i = i + 1 %] [% END %] VARCHAR,
[% END -%]
);

COMMENT ON TABLE  [% table %]                         IS '';
COMMENT ON COLUMN [% table %].[% table %]_created     IS '';
COMMENT ON COLUMN [% table %].[% table %]_type_id     IS '';
COMMENT ON COLUMN [% table %].[% table %]_state_id    IS '';
COMMENT ON COLUMN [% table %].[% table %]             IS '';
COMMENT ON COLUMN [% table %].[% table %]_description IS '';
[%- FOREACH column = columns %]
COMMENT ON COLUMN [% table %].[% column %][% i = column.length %][% WHILE i <= 11 + table.length %][% i = i + 1 %] [% END %] IS '';
[%- END %]

INSERT INTO [% table %] VALUES (DEFAULT, DEFAULT, 1, 1, ''[% FOREACH column = columns %], ''[% END %]);
INSERT INTO [% table %] VALUES (DEFAULT, DEFAULT, 1, 1, ''[% FOREACH column = columns %], ''[% END %]);
INSERT INTO [% table %] VALUES (DEFAULT, DEFAULT, 1, 1, ''[% FOREACH column = columns %], ''[% END %]);
INSERT INTO [% table %] VALUES (DEFAULT, DEFAULT, 1, 1, ''[% FOREACH column = columns %], ''[% END %]);
__html/form.html__
[%- UNLESS method %][% method = 'post'   %][% END -%]
[%- UNLESS action %][% action = '#'      %][% END -%]
[%- UNLESS legend %][% legend = 'legend' %][% END -%]
<form method="[% method %]" action="[% action %]">

	<fieldset>
		<legend>[% legend %]</legend>
		<div>
			<label for="input-name">label</label>
			<input type="text" name="input-name" id="input-name" value="text"/>
		</div>
	</fieldset>

	<fieldset>
		<div>
			<input type="submit" value="Submit"/>
		</div>
	</fieldset>

</form>
__html/script.html__
<script type="text/javascript">
<!--/* <![CDATA[ */

/* ]]> */-->
</script>
__html/style.html__
<style type="text/css">
<!--/* <![CDATA[ */

/* ]]> */-->
</style>
__html/table.html__
<table>
	<thead>
		<tr>
			<th></th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td></td>
			<td></td>
		</tr>
	</tbody>
	<tfoot>
		<tr>
			<td></td>
			<td></td>
		</tr>
	</tfoot>
</table>
__javadoc/file.tmpl__
/**
 *	@file
 *	@author
 *	@todo
 *	@bug
 *	@created
 *	@version
 *
 *
 */
__javadoc/fn.tmpl__
/**
 *	@param	:
 *	@return
 *	@todo
 *	@bug
 *
 *
 */
__javadoc/function.tmpl__
/**
 *	@param	:
 *	@return
 *	@todo
 *	@bug
 *
 *
 */
__js/class.js__
[% IF not class %][% class = 'Class' %][% END -%]
[% IF not parent %][% parent = 'Object' %][% END -%]
[% IF not params %][% params = [ 'r1', 'r2' ] %][% END -%]
[% IF not licence %][% licence = 'gpl' %][% END -%]
[% IF not functions %][% functions = ['example'] %][% END -%]
[% INCLUDE js/jdoc/class.js %]

/*
[% INCLUDE licence.txt %]
*/

[% class %].prototype = new [% parent %]();
[% class %].prototype.constructor = [% class %];
[% class %].superclass = [% parent %].prototype;

[% INCLUDE js/jdoc/func.js description => 'object creator' %]
function [% class %]( [% FOREACH param = params %][% param %], [% END %] ) {

	if ( arguments.length > 0 ) this.init( '[% class %]', [% FOREACH param = params %][% param %], [% END %] );
}

/**
 *	@param	class_name:	The name of the class instantiating this object.
[% INCLUDE js/jdoc/params.js -%]
 *
 *	The [% class %] object initialiser
 */
[% class %].prototype.init = function( class_name, [% FOREACH param = params %][% param %], [% END %] ) {

	// init the parent class
	[% class %].superclass.init.call( this, class_name );

	this.bodyid = bodyid;
}
[% FOREACH method = functions %]

[% INCLUDE js/method.js %]
[% END %]
__js/func.js__
[% INCLUDE js/jdoc/func.js %]
function [% func %]( [% FOREACH param = params %][% param %], [% END %] ) {

}
__js/method.js__
[% INCLUDE js/jdoc/func.js %]
[% class %].prototype.[% method %] = function ( [% FOREACH param = params %][% param %], [% END %] ) {

}
__licence/gpl.txt__

This file is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

Xoo is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Xoo; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA
 __licence/gpl_project.txt__

This file is part of [% module %].

[% module %] free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

Xoo is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Xoo; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA
__licence/lgpl.txt__

This file is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

Xoo is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Xoo; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA
__licence/perl.txt__

This module is free software; you can redistribute it and/or modify it under
the same terms as Perl itself. See L<perlartistic>.  This program is
distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.
__perl/AUTOLOAD.pl__
[% INCLUDE perl/pod.pl sub => 'AUTOLOAD', vars => ' ' -%]

sub AUTOLOAD {

	# localise the $AUTOLOAD variable
	local $AUTOLOAD;

	# ignore the method if it is the DESTROY method
	return if $AUTOLOAD =~ /DESTROY$/;

	# make sure that this is being called as a method
	croak( "AUTOLOAD(): This function is not being called by a ref: $AUTOLOAD( ".join (', ', @_)." )\n" ) unless ref $_[0];

	# get the object
	my $self = shift;

	# get the function name sans package name
	my ($method) = $AUTOLOAD =~ /::([^:]+)$/;

}
__perl/exception.pl__
[% IF not vars %][% vars = [ 'search' ] %][% END -%]
[% IF not module %][% module = 'X::Name' %][% END -%]
package [% module %];

=head1 NAME

[% module %] - <One-line description of module's purpose>

[% INCLUDE perl/pod/VERSION.pl %]
[% INCLUDE perl/pod/SYNOPSIS.pl %]
[% INCLUDE perl/pod/DESCRIPTION.pl %]
[% INCLUDE perl/pod/METHODS.pl %]
[% INCLUDE perl/pod/detailed.pl %]
=head1 AUTHOR

[% contact.fullname %] - ([% contact.email %])
<Author name(s)>  (<contact address>)

=head1 LICENSE AND COPYRIGHT
[% INCLUDE licence.txt %]
=cut

# Created on: [% date %] [% time %]
# Create by:  [% contact.fullname or user %]

use strict;
use warnings;
use Carp;
use Data::Dumper qw/Dumper/;

use Scalar::Util;
use List::Util;
use List::MoreUtils;

our $VERSION = 0.0.1;
our @EXPORT = qw//;
our @EXPORT_OK = qw//;

use Exception::Class (
	[% module %] => {
		isa			=> '',
		description	=> 'An exception class',
		fields		=> qw//,
		alias		=> '',
	},
);

1;

 =__END__

__perl/find.pl__
[% IF not vars %][% vars = [ 'search' ] %][% END -%]
[% IF not sub %][% sub = 'find_files' %][% END -%]
[% INCLUDE perl/pod.pl vars => [ 'dir', vars ]-%]

sub [% sub %] {
	my ( $dir, [% FOREACH var = vars %]$[% var %], [% END %] ) = @_;

	opendir DIR, $dir or warn "Unable to open the directory $dir: $!\n" and return;
	my @files = readdir DIR;
	close DIR;

	foreach my $file ( @files ) {
		next if $file =~ /^\.\.?$/;	# ignore the directories . and ..
		if ( -d "$dir/$file" ) {

			# recurse to sub directories
			find_files( "$$dir/$file", [% FOREACH var = vars %]$[% var %], [% END %] );
		}
		else {

			# process the file
			;
		}
	}
	return ;
}
__perl/if.pl__
if (  ) {

}
elsif (  ) {

}
else {

}
__perl/package.pm__
[% IF not vars %][% vars = [ 'search' ] %][% END -%]
[% IF not module -%]
    [%- IF out.match('^lib') -%]
        [%- out = out.replace('lib/', '') -%]
        [%- out = out.replace('[.]pm', '') -%]
        [%- out = out.replace('/', '::', 1) -%]
        [%- module = out -%]
    [%- END -%]
[% END -%]
[% IF not module %][% module = 'Module::Name' %][% END -%]
package [% module %];

# Created on: [% date %] [% time %]
# Create by:  [% contact.fullname or user %]
# $Id$
# $Revision$, $HeadURL$, $Date$
# $Revision$, $Source$, $Date$

[% IF moose -%]
use Moose;
[% ELSE -%]
use strict;
use warnings;
[% END -%]
use version;
use Carp;
use Scalar::Util;
use List::Util;
#use List::MoreUtils;
use Data::Dumper qw/Dumper/;
use English qw/ -no_match_vars /;
[% IF !moose -%]
use base qw/Exporter/;
[%- END %]

our $VERSION     = version->new('0.0.1');
our @EXPORT_OK   = qw//;
our %EXPORT_TAGS = ();
#our @EXPORT      = qw//;

[% IF !moose -%]
sub new {
	my $caller = shift;
	my $class  = ref $caller ? ref $caller : $caller;
	my %param  = @_;
	my $self   = \%param;

	bless $self, $class;

	return $self;
}
[%- END %]

1;

 =__END__

=head1 NAME

[% module %] - <One-line description of module's purpose>

[% INCLUDE perl/pod/VERSION.pl %]
[% INCLUDE perl/pod/SYNOPSIS.pl %]
[% INCLUDE perl/pod/DESCRIPTION.pl %]
[% INCLUDE perl/pod/METHODS.pl %]

[% IF !moose -%]
[% INCLUDE perl/pod.pl return => module, sub => 'new' -%]
[% END %]

[% INCLUDE perl/pod/detailed.pl %]
=head1 AUTHOR

[% contact.fullname %] - ([% contact.email %])
<Author name(s)>  (<contact address>)

=head1 LICENSE AND COPYRIGHT
[% INCLUDE licence.txt %]
=cut
__perl/pod.pl__
[% IF not vars %][% vars = [ 'var1', 'var2' ] %][% END -%]
=head3 C<[% sub || 'sub' %] ( [% FOREACH var = vars %]$[% var %],[% END %] )>
[% FOREACH var = vars %]
Param: C<$[% var %]> - type (detail) - description
[% END -%]

Return: [% return %] -

Description:

=cut
__perl/simple.pl__
#!/usr/bin/perl -T

use strict;
use warnings;



 =__DATA__
__perl/sub.pl__
[% IF not vars %][% vars = [ 'var1', 'var2' ] %][% END -%]
[% IF not sub %][% sub = 'sub' %][% END -%]
[% INCLUDE perl/pod.pl -%]

sub [% sub %] {
	my ( [% FOREACH var = vars %]$[% var %], [% END %] ) = @_;

}
__perl/test.pl__
[% IF not module %][% module = 'module' %][% END -%]
[% IF not obj    %][% obj    = 'obj'    %][% END -%]
[% IF not tests  %][% tests  = 10       %][% END -%]
#!/usr/bin/perl

BEGIN { $ENV{TESTING} = 1 }

use strict;
use warnings;
use Test::More tests => [% tests %] + 1;
use Test::NoWarnings;

my $module = '[% module %]';
use_ok( $module );

[% FOREACH subroutine = class -%]

my $[% obj %] = $module->[% subroutine %]();

ok( defined $[% obj %], "Check that the class method [% subroutine %] returns something" );
ok( $[% obj %]->isa('[% module %]'), " and that it is a [% module %]" );

[% END -%]
[% FOREACH subroutine = object -%]
can_ok( $[% obj %], '[% subroutine %]',  " check object can execute [% subroutine %]()" );
ok( $[%	obj %]->[% subroutine %](),      " check object method [% subroutine %]()" );
is( $[%	obj %]->[% subroutine %](), '?', " check object method [% subroutine %]()" );
[% END -%]

[% FOREACH subroutine = func -%]
ok( $[% module %]::[% subroutine %](),      " check method [% subroutine %]()" );
is( $[% module %]::[% subroutine %](), '?', " check method [% subroutine %]()" );
[% END -%]
__perl/timer.pl__
{
    my $start;
    my $previous;
    sub timer {
        my ($msg) = @_;

        my $time = `/tmp/iwills/perl/bin/perl -I/home/isdtc/iwills/lib -MTime::HiRes=time -e 'print time'`;
        $start ||= $time;
        $previous ||= $time;

        my $diff = $time - $start;
        my @caller = caller;

        warn sprintf "%0.3f - %0.3f - ln %4i - $msg\n", $diff, $time - $previous, $caller[2];
        $previous = $time;
    }
}
__php/class.php__
<?php

/**
 *
 *
 */
class [% class %][% IF extends %] extends [% extends %][% END %][% IF implements %] implements [% implements %][% END %] {

	__construct () {
	}

	__toString () {
	}
}

?>
__w3c/xml.xml__
[% IF not version %][% version = 1.0 %][% END -%]
<?xml version="[% version %]" encoding="utf-8"?>
__xml/cdata.xml__
<![CDATA[

]]>
__db/table/dia.sql__
[% IF not table %][% table = '<Table>' %][% END -%]
-- Create the [% table %] table and initial contents

-- DROP TABLE [% table %];

CREATE TABLE [% table %] (
[% FOREACH column = columns -%]
	[% column %][% i = column.length %][% WHILE i <= 11 + table.length %][% i = i + 1 %] [% END %] [%
		IF column == table _ '_id'
		%]SERIAL PRIMARY KEY,[%
		ELSIF column == table _ '_created'
		%]TIMESTAMP WITH TIME ZONE DEFAULT NOW(),[%
		ELSIF column == table _ '_type_id'
		%]INTEGER REFERENCES [% table %]_type  ([% table %]_type_id ) NOT NULL,[%
		ELSIF column == table _ '_state_id'
		%]INTEGER REFERENCES [% table %]_state ([% table %]_state_id) NOT NULL,[%
		ELSIF column == table
		%]VARCHAR NOT NULL UNIQUE,[%
		ELSIF column.search('_id$')
		%][% tables = column.match('^(\w+)_id$')
		%]INTEGER REFERENCES [% tables.1 %] ([% column %]),[%
		ELSE
		%]VARCHAR,[%
		END %]
[% END -%]
);

[%- FOREACH column = columns %]
COMMENT ON COLUMN [% table %].[% column %][% i = column.length %][% WHILE i <= 11 + table.length %][% i = i + 1 %] [% END %] IS '';
[%- END %]

INSERT INTO [% table %] VALUES ([% FOREACH column = columns %], [% IF column == table _ '_id' || column == table _ '_created' %]DEFAULT[% ELSIF column.search('_id$') %]0[% ELSE %]''[% END %][% END %]);
__html/script/jquery.html__
<script type="text/javascript">
<!--/* <![CDATA[ */

$(document).ready( function() {

	var obj = $('#id');

});

/* ]]> */-->
</script>

__js/func/object.js__

[% class %].prototype.[% func %] = function( [% FOREACH param = params %][% param %], [% END %] ) {

}
__js/jdoc/class.js__
/**	@class  [% class %]
 *	@created	[% date %]
 *	@brief
 *	@author 	[% contact.fullname %]
 *	@version	0.0.1
 *	@warning
 *	@todo	implementation
 *	@bug
 *
 *	[% class %] description
 */
__js/jdoc/func.js__
/**
[% INCLUDE js/jdoc/params.js -%]
[% IF returns -%]
 *	@return	[% returns %]:
[% END -%]
[% IF params or returns -%]
 *
[% END -%]
 *	[% description %]
 */
__js/jdoc/params.js__
[% UNLESS params %][% params = ['parameter'] %][% END -%]
[% FOREACH param = params -%]
 *	@param	[% param %]:
[% END -%]
__perl/exception/base.pl__
[% IF not vars %][% vars = [ 'search' ] %][% END -%]
[% IF not module %][% module = 'X::Base' %][% END -%]
package [% module %];

=head1 NAME

[% module %] - <One-line description of module's purpose>

[% INCLUDE perl/pod/VERSION.pl %]
[% INCLUDE perl/pod/SYNOPSIS.pl %]
[% INCLUDE perl/pod/DESCRIPTION.pl %]
[% INCLUDE perl/pod/METHODS.pl %]
[% INCLUDE perl/pod/detailed.pl %]
=head1 AUTHOR

[% contact.fullname %] - ([% contact.email %])
<Author name(s)>  (<contact address>)

=head1 LICENSE AND COPYRIGHT
[% INCLUDE licence.txt %]
=cut

# Created on: [% date %] [% time %]
# Create by:  [% contact.fullname or user %]

use strict;
use warnings;
use Carp;
use Data::Dumper qw/Dumper/;
use Scalar::Util;
use List::Util;
#use List::MoreUtils;
use base qw/Exporter/;

our $VERSION = 0.0.1;
our @EXPORT = qw//;
our @EXPORT_OK = qw//;

[% INCLUDE perl/pod.pl return => mod -%]

sub new {
	my $caller = shift;
	my $class  = (ref $caller) ? ref $caller : $caller;
	my %param  = @_;
	my $self   = \%param;

	bless $self, $class;

	return $self;
}


1;

 =__END__
__perl/package/Build.PL__
[% module = module || 'module' -%]
[% file     = module -%]
[% IF file.match('::') -%]
[%     file = file.replace('::', '/') -%]
[% END -%]
[% file = file _ '.pm' -%]
[% package  = module -%]
[% IF package.match('::') -%]
[%     package = package.replace('::', '-') -%]
[% END -%]
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
	module_name       => '[% module %]',
	license           => 'perl',
	dist_author       => '[% contact.fullname %] <[% contact.email %]>',
	dist_version_from => 'lib/[% file %]',
	requires          => {
		'perl'             => 5.008,
	},
	build_requires => {
		'Test::More'       => 0,
		'Test::NoWarnings' => 0,
	},
	add_to_cleanup     => [ '[% package %]-*' ],
	create_makefile_pl => 'traditional',
	create_license     => 1,
	meta_merge => {
		resources => {
			repository => 'git://github.com/ivanwills/[% package %].git',
			bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=[% module %]',
		},
	},
);

$builder->create_build_script();
__perl/package/Changes__
[% module = module || 'module' -%]
[% file     = module -%]
[% IF file.match('::') -%]
[%     file = file.replace('::', '/') -%]
[% END -%]
[% file = file _ '.pm' -%]
[% package  = module -%]
[% IF package.match('::') -%]
[%     package = package.replace('::', '-') -%]
[% END -%]
Revision history for [% package %]

0.0.1   Date/time
        First version, released on an unsuspecting world.

__perl/package/LICENSE__
This software is copyright (c) 2010 by Ivan Wills <ivan.wills@gmail.com>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

Terms of the Perl programming language system itself

a) the GNU General Public License as published by the Free
   Software Foundation; either version 1, or (at your option) any
   later version, or
b) the "Artistic License"

--- The GNU General Public License, Version 1, February 1989 ---

This software is Copyright (c) 2010 by Ivan Wills <ivan.wills@gmail.com>.

This is free software, licensed under:

  The GNU General Public License, Version 1, February 1989

		    GNU GENERAL PUBLIC LICENSE
		     Version 1, February 1989

 Copyright (C) 1989 Free Software Foundation, Inc.
                59 Temple Place, Suite 330, Boston, MA 02111-1307, USA
 Everyone is permitted to copy and distribute verbatim copies
 of this license document, but changing it is not allowed.

			    Preamble

  The license agreements of most software companies try to keep users
at the mercy of those companies.  By contrast, our General Public
License is intended to guarantee your freedom to share and change free
software--to make sure the software is free for all its users.  The
General Public License applies to the Free Software Foundation's
software and to any other program whose authors commit to using it.
You can use it for your programs, too.

  When we speak of free software, we are referring to freedom, not
price.  Specifically, the General Public License is designed to make
sure that you have the freedom to give away or sell copies of free
software, that you receive source code or can get it if you want it,
that you can change the software or use pieces of it in new free
programs; and that you know you can do these things.

  To protect your rights, we need to make restrictions that forbid
anyone to deny you these rights or to ask you to surrender the rights.
These restrictions translate to certain responsibilities for you if you
distribute copies of the software, or if you modify it.

  For example, if you distribute copies of a such a program, whether
gratis or for a fee, you must give the recipients all the rights that
you have.  You must make sure that they, too, receive or can get the
source code.  And you must tell them their rights.

  We protect your rights with two steps: (1) copyright the software, and
(2) offer you this license which gives you legal permission to copy,
distribute and/or modify the software.

  Also, for each author's protection and ours, we want to make certain
that everyone understands that there is no warranty for this free
software.  If the software is modified by someone else and passed on, we
want its recipients to know that what they have is not the original, so
that any problems introduced by others will not reflect on the original
authors' reputations.

  The precise terms and conditions for copying, distribution and
modification follow.

		    GNU GENERAL PUBLIC LICENSE
   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

  0. This License Agreement applies to any program or other work which
contains a notice placed by the copyright holder saying it may be
distributed under the terms of this General Public License.  The
"Program", below, refers to any such program or work, and a "work based
on the Program" means either the Program or any work containing the
Program or a portion of it, either verbatim or with modifications.  Each
licensee is addressed as "you".

  1. You may copy and distribute verbatim copies of the Program's source
code as you receive it, in any medium, provided that you conspicuously and
appropriately publish on each copy an appropriate copyright notice and
disclaimer of warranty; keep intact all the notices that refer to this
General Public License and to the absence of any warranty; and give any
other recipients of the Program a copy of this General Public License
along with the Program.  You may charge a fee for the physical act of
transferring a copy.

  2. You may modify your copy or copies of the Program or any portion of
it, and copy and distribute such modifications under the terms of Paragraph
1 above, provided that you also do the following:

    a) cause the modified files to carry prominent notices stating that
    you changed the files and the date of any change; and

    b) cause the whole of any work that you distribute or publish, that
    in whole or in part contains the Program or any part thereof, either
    with or without modifications, to be licensed at no charge to all
    third parties under the terms of this General Public License (except
    that you may choose to grant warranty protection to some or all
    third parties, at your option).

    c) If the modified program normally reads commands interactively when
    run, you must cause it, when started running for such interactive use
    in the simplest and most usual way, to print or display an
    announcement including an appropriate copyright notice and a notice
    that there is no warranty (or else, saying that you provide a
    warranty) and that users may redistribute the program under these
    conditions, and telling the user how to view a copy of this General
    Public License.

    d) You may charge a fee for the physical act of transferring a
    copy, and you may at your option offer warranty protection in
    exchange for a fee.

Mere aggregation of another independent work with the Program (or its
derivative) on a volume of a storage or distribution medium does not bring
the other work under the scope of these terms.

  3. You may copy and distribute the Program (or a portion or derivative of
it, under Paragraph 2) in object code or executable form under the terms of
Paragraphs 1 and 2 above provided that you also do one of the following:

    a) accompany it with the complete corresponding machine-readable
    source code, which must be distributed under the terms of
    Paragraphs 1 and 2 above; or,

    b) accompany it with a written offer, valid for at least three
    years, to give any third party free (except for a nominal charge
    for the cost of distribution) a complete machine-readable copy of the
    corresponding source code, to be distributed under the terms of
    Paragraphs 1 and 2 above; or,

    c) accompany it with the information you received as to where the
    corresponding source code may be obtained.  (This alternative is
    allowed only for noncommercial distribution and only if you
    received the program in object code or executable form alone.)

Source code for a work means the preferred form of the work for making
modifications to it.  For an executable file, complete source code means
all the source code for all modules it contains; but, as a special
exception, it need not include source code for modules which are standard
libraries that accompany the operating system on which the executable
file runs, or for standard header files or definitions files that
accompany that operating system.

  4. You may not copy, modify, sublicense, distribute or transfer the
Program except as expressly provided under this General Public License.
Any attempt otherwise to copy, modify, sublicense, distribute or transfer
the Program is void, and will automatically terminate your rights to use
the Program under this License.  However, parties who have received
copies, or rights to use copies, from you under this General Public
License will not have their licenses terminated so long as such parties
remain in full compliance.

  5. By copying, distributing or modifying the Program (or any work based
on the Program) you indicate your acceptance of this license to do so,
and all its terms and conditions.

  6. Each time you redistribute the Program (or any work based on the
Program), the recipient automatically receives a license from the original
licensor to copy, distribute or modify the Program subject to these
terms and conditions.  You may not impose any further restrictions on the
recipients' exercise of the rights granted herein.

  7. The Free Software Foundation may publish revised and/or new versions
of the General Public License from time to time.  Such new versions will
be similar in spirit to the present version, but may differ in detail to
address new problems or concerns.

Each version is given a distinguishing version number.  If the Program
specifies a version number of the license which applies to it and "any
later version", you have the option of following the terms and conditions
either of that version or of any later version published by the Free
Software Foundation.  If the Program does not specify a version number of
the license, you may choose any version ever published by the Free Software
Foundation.

  8. If you wish to incorporate parts of the Program into other free
programs whose distribution conditions are different, write to the author
to ask for permission.  For software which is copyrighted by the Free
Software Foundation, write to the Free Software Foundation; we sometimes
make exceptions for this.  Our decision will be guided by the two goals
of preserving the free status of all derivatives of our free software and
of promoting the sharing and reuse of software generally.

			    NO WARRANTY

  9. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN
OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED
OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS
TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE
PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,
REPAIR OR CORRECTION.

  10. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,
INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING
OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED
TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY
YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER
PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE
POSSIBILITY OF SUCH DAMAGES.

		     END OF TERMS AND CONDITIONS

	Appendix: How to Apply These Terms to Your New Programs

  If you develop a new program, and you want it to be of the greatest
possible use to humanity, the best way to achieve this is to make it
free software which everyone can redistribute and change under these
terms.

  To do so, attach the following notices to the program.  It is safest to
attach them to the start of each source file to most effectively convey
the exclusion of warranty; and each file should have at least the
"copyright" line and a pointer to where the full notice is found.

    <one line to give the program's name and a brief idea of what it does.>
    Copyright (C) 19yy  <name of author>

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 1, or (at your option)
    any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307, USA.

Also add information on how to contact you by electronic and paper mail.

If the program is interactive, make it output a short notice like this
when it starts in an interactive mode:

    Gnomovision version 69, Copyright (C) 19xx name of author
    Gnomovision comes with ABSOLUTELY NO WARRANTY; for details type `show w'.
    This is free software, and you are welcome to redistribute it
    under certain conditions; type `show c' for details.

The hypothetical commands `show w' and `show c' should show the
appropriate parts of the General Public License.  Of course, the
commands you use may be called something other than `show w' and `show
c'; they could even be mouse-clicks or menu items--whatever suits your
program.

You should also get your employer (if you work as a programmer) or your
school, if any, to sign a "copyright disclaimer" for the program, if
necessary.  Here a sample; alter the names:

  Yoyodyne, Inc., hereby disclaims all copyright interest in the
  program `Gnomovision' (a program to direct compilers to make passes
  at assemblers) written by James Hacker.

  <signature of Ty Coon>, 1 April 1989
  Ty Coon, President of Vice

That's all there is to it!


--- The Artistic License 1.0 ---

This software is Copyright (c) 2010 by Ivan Wills <ivan.wills@gmail.com>.

This is free software, licensed under:

  The Artistic License 1.0

The Artistic License

Preamble

The intent of this document is to state the conditions under which a Package
may be copied, such that the Copyright Holder maintains some semblance of
artistic control over the development of the package, while giving the users of
the package the right to use and distribute the Package in a more-or-less
customary fashion, plus the right to make reasonable modifications.

Definitions:

  - "Package" refers to the collection of files distributed by the Copyright
    Holder, and derivatives of that collection of files created through
    textual modification.
  - "Standard Version" refers to such a Package if it has not been modified,
    or has been modified in accordance with the wishes of the Copyright
    Holder.
  - "Copyright Holder" is whoever is named in the copyright or copyrights for
    the package.
  - "You" is you, if you're thinking about copying or distributing this Package.
  - "Reasonable copying fee" is whatever you can justify on the basis of media
    cost, duplication charges, time of people involved, and so on. (You will
    not be required to justify it to the Copyright Holder, but only to the
    computing community at large as a market that must bear the fee.)
  - "Freely Available" means that no fee is charged for the item itself, though
    there may be fees involved in handling the item. It also means that
    recipients of the item may redistribute it under the same conditions they
    received it.

1. You may make and give away verbatim copies of the source form of the
Standard Version of this Package without restriction, provided that you
duplicate all of the original copyright notices and associated disclaimers.

2. You may apply bug fixes, portability fixes and other modifications derived
from the Public Domain or from the Copyright Holder. A Package modified in such
a way shall still be considered the Standard Version.

3. You may otherwise modify your copy of this Package in any way, provided that
you insert a prominent notice in each changed file stating how and when you
changed that file, and provided that you do at least ONE of the following:

  a) place your modifications in the Public Domain or otherwise make them
     Freely Available, such as by posting said modifications to Usenet or an
     equivalent medium, or placing the modifications on a major archive site
     such as ftp.uu.net, or by allowing the Copyright Holder to include your
     modifications in the Standard Version of the Package.

  b) use the modified Package only within your corporation or organization.

  c) rename any non-standard executables so the names do not conflict with
     standard executables, which must also be provided, and provide a separate
     manual page for each non-standard executable that clearly documents how it
     differs from the Standard Version.

  d) make other distribution arrangements with the Copyright Holder.

4. You may distribute the programs of this Package in object code or executable
form, provided that you do at least ONE of the following:

  a) distribute a Standard Version of the executables and library files,
     together with instructions (in the manual page or equivalent) on where to
     get the Standard Version.

  b) accompany the distribution with the machine-readable source of the Package
     with your modifications.

  c) accompany any non-standard executables with their corresponding Standard
     Version executables, giving the non-standard executables non-standard
     names, and clearly documenting the differences in manual pages (or
     equivalent), together with instructions on where to get the Standard
     Version.

  d) make other distribution arrangements with the Copyright Holder.

5. You may charge a reasonable copying fee for any distribution of this
Package.  You may charge any fee you choose for support of this Package. You
may not charge a fee for this Package itself. However, you may distribute this
Package in aggregate with other (possibly commercial) programs as part of a
larger (possibly commercial) software distribution provided that you do not
advertise this Package as a product of your own.

6. The scripts and library files supplied as input to or produced as output
from the programs of this Package do not automatically fall under the copyright
of this Package, but belong to whomever generated them, and may be sold
commercially, and may be aggregated with this Package.

7. C or perl subroutines supplied by you and linked into this Package shall not
be considered part of this Package.

8. The name of the Copyright Holder may not be used to endorse or promote
products derived from this software without specific prior written permission.

9. THIS PACKAGE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED
WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF
MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.

The End

__perl/package/MANIFEST__
[% module = module || 'module' -%]
[% file     = module -%]
[% IF file.match('::') -%]
[%     file = file.replace('::', '/') -%]
[% END -%]
[% file = file _ '.pm' -%]
[% package  = module -%]
[% IF package.match('::') -%]
[%     package = package.replace('::', '-') -%]
[% END -%]
Build.PL
Changes
LICENSE
MANIFEST
MANIFEST.SKIP
META.yml
Makefile.PL
README
lib/[% file %]
t/00-load.t
t/boilerplate.t
t/critic.t
t/kwalitee.t
t/pod-coverage.t
t/pod.t
t/perlcriticrc
t/spelling.t
__perl/package/MANIFEST.SKIP__
[% module = module || 'module' -%]
[% file     = module -%]
[% IF file.match('::') -%]
[%     file = file.replace('::', '/') -%]
[% END -%]
[% file = file _ '.pm' -%]
[% package  = module -%]
[% IF package.match('::') -%]
[%     package = package.replace('::', '-') -%]
[% END -%]
# Avoid version control files.
\bRCS\b
\bCVS\b
,v$
\B\.svn\b
\B\.cvsignore$
\B\.git\b
\B\.gitignore$
\B\.bzr\b

# Avoid Makemaker generated and utility files.
\bMakefile$
\bblib
\bMakeMaker-\d
\bpm_to_blib$
\bblibdirs$
^MANIFEST\.SKIP$

# Avoid VMS specific Makemaker generated files
\bDescrip.MMS$
\bDESCRIP.MMS$
\bdescrip.mms$

# Avoid Module::Build generated and utility files.
\bBuild$
\bBuild.bat$
\b_build
\bBuild.COM$
\bBUILD.COM$
\bbuild.com$

# Avoid Devel::Cover generated files
\bcover_db

# Avoid temp and backup files.
~$
\.tmp$
\.old$
\.bak$
\#$
\.#
\.rej$

# Avoid OS-specific files/dirs
#   Mac OSX metadata
\B\.DS_Store
#   Mac OSX SMB mount metadata files
\B\._

# Avoid vim temporary file
.*\.sw[po]$

# This generated file
\bMYMETA.yml$

# Avoid Test::Kwalitee generated files
Debian_CPANTS.txt

# Avoid Devel::NYTProf generated files
\bnytprof*

# Avoid archives of this distribution
\b[% package %]-[\d\.\_]+
__perl/package/README__
[% module = module || 'module' -%]
[% file     = module -%]
[% IF file.match('::') -%]
[%     file = file.replace('::', '/') -%]
[% END -%]
[% file = file _ '.pm' -%]
[% package  = module -%]
[% IF package.match('::') -%]
[%     package = package.replace('::', '-') -%]
[% END -%]
[% package %]

The README is used to introduce the module and provide instructions on
how to install the module, any machine dependencies it may have (for
example C compilers and installed libraries) and any other information
that should be provided before the module is installed.

A README file is required for CPAN modules since CPAN extracts the README
file from a module distribution so that people browsing the archive
can use it to get an idea of the module's uses. It is usually a good idea
to provide version information here so that people can decide whether
fixes for the module are worth downloading.

INSTALLATION

To install this module, run the following commands:

    perl Build.PL
    ./Build
    ./Build test
    ./Build install

SUPPORT AND DOCUMENTATION

After installing, you can find documentation for this module with the
perldoc command.

    perldoc [% module %]

You can also look for information at:

    RT, CPAN's request tracker
        http://rt.cpan.org/NoAuth/Bugs.html?Dist=[% package %]

    AnnoCPAN, Annotated CPAN documentation
        http://annocpan.org/dist/[% package %]

    CPAN Ratings
        http://cpanratings.perl.org/d/[% package %]

    Search CPAN
        http://search.cpan.org/dist/[% package %]/

    Source Code
        git://github.com/ivanwills/[% package %].git

COPYRIGHT AND LICENCE

Copyright (C) [% year %] [% contact.fullname %]

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

__perl/package/dia.pm__
[% IF not vars %][% vars = [ 'search' ] %][% END -%]
[% IF not module %][% module = 'Module::Name' %][% END -%]
package [% module %];

# Created on: [% date %] [% time %]
# Create by:  [% contact.fullname or user %]
# $Id$
# $Revision$, $HeadURL$, $Date$
# $Revision$, $Source$, $Date$

use strict;
use warnings;
use version;
use Carp;
use Scalar::Util;
use List::Util;
#use List::MoreUtils;
use Data::Dumper qw/Dumper/;
use English qw/ -no_match_vars /;
use base qw/Exporter/;

our $VERSION     = version->new('0.0.1');
our @EXPORT_OK   = qw//;
our %EXPORT_TAGS = ();
#our @EXPORT      = qw//;

[% funcs = sigs.join(',') %]
[%- sigs = funcs.split('\)') %]
[%- FOREACH sig = sigs %]
[%- matches = sig.match('^,?(\w+)[(](.*)$') -%]
sub [% matches.0 %] {

[% IF matches.0 == 'new' -%]
	my ($caller, %param) = @_;
	my $class = ref $caller ? ref $caller : $caller;
	my $self  = \%param;

	[%- FOREACH param = matches.1.split(',') %]
	carp "Missing [% param %]" if !$param{'[% param %]'};
	[%- END %]

	bless $self, $class;
[%- ELSE %]
	my ( $self, %args ) = @_;

	[%- FOREACH param = matches.1.split(',') %]
	carp "Missing [% param %]" if !$args{'[% param %]'};
	[%- END %]
[%- END %]

	return;
}

[% END %]

1;

 =__END__

=head1 NAME

[% module %] - <One-line description of module's purpose>

[% INCLUDE perl/pod/VERSION.pl %]
[% INCLUDE perl/pod/SYNOPSIS.pl %]
[% INCLUDE perl/pod/DESCRIPTION.pl %]
[% INCLUDE perl/pod/METHODS.pl %]

[% FOREACH sig = sigs %]
[%- matches = sig.match('^,?(\w+)[(](.*)$') -%]
=head3 C<[% matches.0 %] ([% matches.1.split(',').join(', ') %])>
[% FOREACH arg = matches.1.split(',') %]
Arg: C<[% arg %]> - type (detail) - description
[% END %]
Return: type - description

Description:

[% END %]

[% INCLUDE perl/pod/detailed.pl %]
=head1 AUTHOR

[% contact.fullname %] - ([% contact.email %])
<Author name(s)>  (<contact address>)

=head1 LICENSE AND COPYRIGHT
[% INCLUDE licence.txt %]
=cut
__perl/package/gtk2.pl__
[% IF not vars %][% vars = [ 'search' ] %][% END -%]
[% IF not module %][% module = 'Module::Name' %][% END -%]
[% IF not super %][% super = 'Gtk2::Button::' %][% END -%]
package [% module %];

=head1 NAME

[% module %] - <One-line description of module's purpose>

[% INCLUDE perl/pod/VERSION.pl %]
[% INCLUDE perl/pod/SYNOPSIS.pl %]
[% INCLUDE perl/pod/DESCRIPTION.pl %]
[% INCLUDE perl/pod/METHODS.pl %]
[% INCLUDE perl/pod/detailed.pl %]
=head1 AUTHOR

[% contact.fullname %] - ([% contact.email %])
<Author name(s)>  (<contact address>)

=head1 LICENSE AND COPYRIGHT
[% INCLUDE licence.pl %]
=cut

# Created on: [% date %] [% time %]
# Create by:  [% contact.fullname or user %]

use strict;
use warnings;
use Carp;
use Data::Dumper qw/Dumper/;

use Scalar::Util;
use List::Util;
#use List::MoreUtils;

use CGI;
use Gtk2;
use base qw/Exporter/;

our $VERSION = 0.0.1;
our @EXPORT = qw//;
our @EXPORT_OK = qw//;

use Glib::Object::Subclass (
	[% super %],
	signals		=> {
		signal	=> {} or \&sub,
	},
	properties	=> [
		Glib::ParamSpec->init(
			'', 	# name
			'', 	# nickname/label?
			'', 	# description
			0,		# min
			'inf',	# max
			0,		# default
			[qw/readable writable/],	# flags
		),
	],
);

[% INCLUDE perl/pod.pl return => module -%]

# effectively serves as new
sub INIT_INSTANCE {
	my $self = shift;

}


1;

 =__END__

__perl/pod/DESCRIPTION.pl__

=head1 DESCRIPTION

A full description of the module and its features.

May include numerous subsections (i.e., =head2, =head3, etc.).
__perl/pod/METHODS.pl__

=head1 SUBROUTINES/METHODS

A separate section listing the public components of the module's interface.

These normally consist of either subroutines that may be exported, or methods
that may be called on objects belonging to the classes that the module
provides.

Name the section accordingly.

In an object-oriented module, this section should begin with a sentence (of the
form "An object of this class represents ...") to give the reader a high-level
context to help them understand the methods that are subsequently described.
__perl/pod/NAME.pl__

__perl/pod/SYNOPSIS.pl__

=head1 SYNOPSIS

   use [% module %];

   # Brief but working code example(s) here showing the most common usage(s)
   # This section will be as far as many users bother reading, so make it as
   # educational and exemplary as possible.
__perl/pod/USAGE.pl__
=head1 SYNOPSIS

   [% module %] [option]

 OPTIONS:
  -o --other         other option

  -v --verbose       Show more detailed option
     --version       Prints the version information
     --help          Prints this help information
     --man           Prints the full documentation for [% module %]

__perl/pod/VERSION.pl__
=head1 VERSION

This documentation refers to [% module %] version 0.1.
__perl/pod/detailed.pl__
=head1 DIAGNOSTICS

A list of every error and warning message that the module can generate (even
the ones that will "never happen"), with a full explanation of each problem,
one or more likely causes, and any suggested remedies.

=head1 CONFIGURATION AND ENVIRONMENT

A full explanation of any configuration system(s) used by the module, including
the names and locations of any configuration files, and the meaning of any
environment variables or properties that can be set. These descriptions must
also include details of any configuration language used.

=head1 DEPENDENCIES

A list of all of the other modules that this module relies upon, including any
restrictions on versions, and an indication of whether these required modules
are part of the standard Perl distribution, part of the module's distribution,
or must be installed separately.

=head1 INCOMPATIBILITIES

A list of any modules that this module cannot be used in conjunction with.
This may be due to name conflicts in the interface, or competition for system
or program resources, or due to internal limitations of Perl (for example, many
modules that use source code filters are mutually incompatible).

=head1 BUGS AND LIMITATIONS

A list of known problems with the module, together with some indication of
whether they are likely to be fixed in an upcoming release.

Also, a list of restrictions on the features the module does provide: data types
that cannot be handled, performance issues and the circumstances in which they
may arise, practical limitations on the size of data sets, special cases that
are not (yet) handled, etc.

The initial template usually just has:

There are no known bugs in this module.

Please report problems to [% contact.fullname %] ([% contact.email %]).

Patches are welcome.
__perl/pod/package.pl__
[% IF not vars %][% vars = [ 'search' ] %][% END -%]
[% IF not module %][% module = 'Module::Name' %][% END -%]
=head1 NAME

[% module %] - <One-line description of module's purpose>

[% INCLUDE perl/pod/VERSION.pl %]
[% INCLUDE perl/pod/SYNOPSIS.pl %]
[% INCLUDE perl/pod/DESCRIPTION.pl %]
[% INCLUDE perl/pod/METHODS.pl %]

=cut

[% INCLUDE perl/pod.pl return => module, sub => 'new' -%]

[% INCLUDE perl/pod/detailed.pl %]
=head1 AUTHOR

[% contact.fullname %] - ([% contact.email %])

=head1 LICENSE AND COPYRIGHT
[% INCLUDE licence.txt %]
=cut

__perl/sub/class.pl__
[% IF not vars %][% vars = [ 'var1', 'var2' ] %][% END -%]
[% IF not sub %][% sub = 'class_method' %][% END -%]
[% INCLUDE perl/pod.pl -%]

sub [% sub %] {
	my $caller = shift;
	my $class = (ref $caller) ? ref $caller : $caller;
	my ( [% FOREACH var = vars %]$[% var %], [% END %] ) = @_;

}
__perl/sub/method.pl__
[% IF not vars %][% vars = [ 'var1', 'var2' ] %][% END -%]
[% IF not sub %][% sub = 'method' %][% END -%]
[% INCLUDE perl/pod.pl -%]

sub [% sub %] {
	my ( $self, %args ) = @_;
	my ( [% FOREACH var = vars %]$[% var %], [% END %] ) = @_;
	#my $dbh  = $self->{dbh};
	#my $q    = $self->{cgi};
	#my $set  = $self->{set};

}
__perl/sub/object.pl__
[% IF not vars %][% vars = [ 'var1', 'var2' ] %][% END -%]
[% IF not sub %][% sub = 'method' %][% END -%]
[% INCLUDE perl/pod.pl -%]

sub [% sub %] {
	my ( $self, %args ) = @_;
	my ( [% FOREACH var = vars %]$[% var %], [% END %] ) = @_;
	#my $dbh  = $self->{dbh};
	#my $q    = $self->{cgi};
	#my $set  = $self->{set};

}
__perl/test/00-load.t__
[% IF not module %][% module = 'module'   %][% END -%]
#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 1 + 1;
use Test::NoWarnings;

BEGIN {
	use_ok( '[% module %]' );
}

diag( "Testing [% module %] $[% module %]::VERSION, Perl $], $^X" );
__perl/test/boilerplate.t__
[% IF not module %][% module = 'module'   %][% END -%]
[% IF not file   %][% PERL %]
my $file = $stash->get('module');
$file =~ s{::}{/}gxms;
$stash->set( file => $file );
[% END -%]
[% END -%]
#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 3 + 1;
use Test::NoWarnings;

sub not_in_file_ok {
    my ($filename, %regex) = @_;
    open( my $fh, '<', $filename )
        or die "couldn't open $filename for reading: $!";

    my %violated;

    while (my $line = <$fh>) {
        while (my ($desc, $regex) = each %regex) {
            if ($line =~ $regex) {
                push @{$violated{$desc}||=[]}, $.;
            }
        }
    }

    if (%violated) {
        fail("$filename contains boilerplate text");
        diag "$_ appears on lines @{$violated{$_}}" for keys %violated;
    } else {
        pass("$filename contains no boilerplate text");
    }
}

sub module_boilerplate_ok {
    my ($module) = @_;
    not_in_file_ok($module =>
        'the great new $MODULENAME'   => qr/ - The great new /,
        'boilerplate description'     => qr/Quick summary of what the module/,
        'stub function definition'    => qr/function[12]/,
    );
}

TODO: {
  local $TODO = "Need to replace the boilerplate text";

  not_in_file_ok(README =>
    "The README is used..."       => qr/The README is used/,
    "'version information here'"  => qr/to provide version information/,
  );

  not_in_file_ok(Changes =>
    "placeholder date/time"       => qr(Date/time)
  );


}

module_boilerplate_ok('lib/[% file %].pm');

__perl/test/critic.t__
#!/usr/bin/perl

use strict;
use warnings;
use File::Spec;
use Test::More;
use English qw(-no_match_vars);

if ( not $ENV{TEST_AUTHOR} ) {
    my $msg = 'Author test.  Set TEST_AUTHOR environment variable to a true value to run.';
    plan( skip_all => $msg );
}

eval { require Test::Perl::Critic; };

if ( $EVAL_ERROR ) {
   my $msg = 'Test::Perl::Critic required to criticise code';
   plan( skip_all => $msg );
}

my $rcfile = File::Spec->catfile( 't', 'perlcriticrc' );
Test::Perl::Critic->import( -profile => $rcfile );
all_critic_ok();
__perl/test/dia.t__
[% IF not module %][% module = 'module'   %][% END -%]
[% IF not obj    %][% obj    = 'obj'      %][% END -%]
[% IF not class  %][% class  = ['new'   ] %][% END -%]
[% IF not object %][% object = ['method'] %][% END -%]
[% IF not func   %][% func   = ['func'  ] %][% END -%]
[% IF not tests  %][% tests  = 1 + class.size + object.size + func.size %][% END -%]
#!/usr/bin/perl

BEGIN { $ENV{TESTING} = 1 }

use strict;
use warnings;
use Test::More tests => [% tests %];

my $module = '[% module %]';
use_ok( $module );

[% FOREACH subroutine = class -%]

my $[% obj %] = $module->[% subroutine %]();

ok( defined $[% obj %], "Check that the class method [% subroutine %] returns something" );
ok( $[% obj %]->isa('[% module %]'), " and that it is a [% module %]" );

[% END -%]
[% FOREACH subroutine = object -%]
can_ok( $[% obj %], '[% subroutine %]',  " check object can execute [% subroutine %]()" );
ok( $[%	obj %]->[% subroutine %](),      " check object method [% subroutine %]()" );
is( $[%	obj %]->[% subroutine %](), '?', " check object method [% subroutine %]()" );
[% END -%]

[% FOREACH subroutine = func -%]
ok( $[% module %]::[% subroutine %](),      " check method [% subroutine %]()" );
is( $[% module %]::[% subroutine %](), '?', " check method [% subroutine %]()" );
[% END -%]
__perl/test/kwalitee.t__
#!/usr/bin/perl

use strict;
use warnings;

if ( not $ENV{TEST_AUTHOR} ) {
	require Test::More;
	Test::More->import;
	my $msg = 'Author test.  Set TEST_AUTHOR environment variable to a true value to run.';
	plan( skip_all => $msg );
}

eval { require Test::Kwalitee; Test::Kwalitee->import() };

if ($@) {
    require Test::More;
    Test::More->import;
    plan( skip_all => 'Test::Kwalitee not installed; skipping' );
}
__perl/test/manifest.t__
#!/usr/bin/perl -T

use strict;
use warnings;
use Test::More;

if ( not $ENV{TEST_AUTHOR} ) {
    my $msg = 'Author test.  Set TEST_AUTHOR environment variable to a true value to run.';
    plan( skip_all => $msg );
}

eval "use Test::CheckManifest 0.9";
plan skip_all => "Test::CheckManifest 0.9 required" if $@;
ok_manifest();
__perl/test/pod-coverage.t__
#!/usr/bin/perl

use strict;
use warnings;
use Test::More;

if ( not $ENV{TEST_AUTHOR} ) {
    my $msg = 'Author test.  Set TEST_AUTHOR environment variable to a true value to run.';
    plan( skip_all => $msg );
}

# Ensure a recent version of Test::Pod::Coverage
my $min_tpc = 1.08;
eval "use Test::Pod::Coverage $min_tpc";
plan skip_all => "Test::Pod::Coverage $min_tpc required for testing POD coverage"
    if $@;

# Test::Pod::Coverage doesn't require a minimum Pod::Coverage version,
# but older versions don't recognize some common documentation styles
my $min_pc = 0.18;
eval "use Pod::Coverage $min_pc";
plan skip_all => "Pod::Coverage $min_pc required for testing POD coverage"
    if $@;

all_pod_coverage_ok();
__perl/test/pod.t__
#!/usr/bin/perl

use strict;
use warnings;
use Test::More;

# Ensure a recent version of Test::Pod
my $min_tp = 1.22;
eval "use Test::Pod $min_tp";
plan skip_all => "Test::Pod $min_tp required for testing POD" if $@;

all_pod_files_ok();
__perl/test/spelling.t__
#!/usr/bin/perl

use strict;
use warnings;
use Test::More;

if ( not $ENV{TEST_AUTHOR} ) {
    my $msg = 'Author test.  Set TEST_AUTHOR environment variable to a true value to run.';
    plan( skip_all => $msg );
}

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
plan skip_all => "spell command required for testing POD spelling" if !$found;

add_stopwords(qw//);
all_pod_files_spelling_ok();
__w3c/dtd/xhtml+mathml+svg__
<!DOCTYPE html PUBLIC
    "-//W3C//DTD XHTML 1.1 plus MathML 2.0 plus SVG 1.1//EN"
    "http://www.w3.org/2002/04/xhtml-math-svg/xhtml-math-svg.dtd">
__w3c/dtd/HTML/2.0__
<!DOCTYPE html PUBLIC "-//IETF//DTD HTML 2.0//EN">
__w3c/dtd/HTML/3.2__
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
__w3c/dtd/MathML/1.01__
<!DOCTYPE math SYSTEM
	"http://www.w3.org/Math/DTD/mathml1/mathml.dtd">
__w3c/dtd/MathML/2.0__
<!DOCTYPE math PUBLIC "-//W3C//DTD MathML 2.0//EN"
	"http://www.w3.org/TR/MathML2/dtd/mathml2.dtd">
__w3c/dtd/SVG/1.0__
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.0//EN"
	"http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd">
__w3c/dtd/HTML/4.01/frameset__
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN"
   "http://www.w3.org/TR/html4/frameset.dtd">
__w3c/dtd/HTML/4.01/strict__
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN"
   "http://www.w3.org/TR/html4/strict.dtd">
__w3c/dtd/HTML/4.01/transitional__
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
__w3c/dtd/SVG/1.1/basic__
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1 Basic//EN"
	"http://www.w3.org/Graphics/SVG/1.1/DTD/svg11-basic.dtd">
__w3c/dtd/SVG/1.1/full__
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN"
	"http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
__w3c/dtd/SVG/1.1/tiny__
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1 Tiny//EN"
	"http://www.w3.org/Graphics/SVG/1.1/DTD/svg11-tiny.dtd">
__w3c/dtd/XHTML/1.0/basic__
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML Basic 1.0//EN"
    "http://www.w3.org/TR/xhtml-basic/xhtml-basic10.dtd">
__w3c/dtd/XHTML/1.0/frameset__
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
__w3c/dtd/XHTML/1.0/strict__
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
__w3c/dtd/XHTML/1.0/transitional__
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
__w3c/dtd/XHTML/1.1/basic__
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML Basic 1.1//EN"
    "http://www.w3.org/TR/xhtml-basic/xhtml-basic11.dtd">
__w3c/dtd/XHTML/1.1/dtd__
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
   "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
