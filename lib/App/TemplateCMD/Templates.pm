package App::TemplateCMD::Templates;

# Created on: 2008-09-04 05:12:22
# Create by:  ivan
# $Id$
# $Revision$, $HeadURL$, $Date$
# $Revision$, $Source$, $Date$

use strict;
use warnings;
use version;

our $VERSION     = version->new('0.0.1');
our @EXPORT_OK   = qw//;
our %EXPORT_TAGS = ();

sub get_data {
	return *__PACKAGE__::DATA;
}

1;

=head1 NAME

App::TemplateCMD::Templates - <One-line description of module's purpose>

=head1 VERSION

This documentation refers to App::TemplateCMD::Templates version 0.1.


=head1 SYNOPSIS

   use Template;
   use Template::Provider::FromData;
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
__css.ttk__
/********************************************************************\
 *
 * created:		: [% date %]
 * description	:
 * last edit	:
 * web page		:
 *
\********************************************************************/

/*
[% INCLUDE licence.ttk %]
*/
__css/file.ttk__
/********************************************************************\
 *
 * created:		: [% date %]
 * description	:
 * last edit	:
 * web page		:
 *
\********************************************************************/

/*
[% INCLUDE licence.ttk %]
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
__html/script/jquery.html__
<script type="text/javascript">
<!--/* <![CDATA[ */

$(document).ready( function() {

	var obj = $('#id');

});

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
__js/class.ttk__
[% IF not class %][% class = 'Class' %][% END -%]
[% IF not parent %][% parent = 'Object' %][% END -%]
[% IF not params %][% params = [ 'r1', 'r2' ] %][% END -%]
[% IF not licence %][% licence = 'gpl' %][% END -%]
[% IF not functions %][% functions = ['example'] %][% END -%]
[% INCLUDE js/jdoc/class.ttk %]

/*
[% INCLUDE licence.ttk %]
*/

[% class %].prototype = new [% parent %]();
[% class %].prototype.constructor = [% class %];
[% class %].superclass = [% parent %].prototype;

[% INCLUDE js/jdoc/func.ttk description => 'object creator' %]
function [% class %]( [% FOREACH param = params %][% param %], [% END %] ) {

	if ( arguments.length > 0 ) this.init( '[% class %]', [% FOREACH param = params %][% param %], [% END %] );
}

/**
 *	@param	class_name:	The name of the class instanciating this object.
[% INCLUDE js/jdoc/params.ttk -%]
 *
 *	The [% class %] object initialiser
 */
[% class %].prototype.init = function( class_name, [% FOREACH param = params %][% param %], [% END %] ) {

	// init the parent class
	[% class %].superclass.init.call( this, class_name );

	this.bodyid = bodyid;
}
[% FOREACH method = functions %]

[% INCLUDE js/method.ttk %]
[% END %]
__js/func.ttk__
[% INCLUDE js/jdoc/func.ttk %]
function [% func %]( [% FOREACH param = params %][% param %], [% END %] ) {

}
__js/func/object.ttk__

[% class %].prototype.[% func %] = function( [% FOREACH param = params %][% param %], [% END %] ) {

}
__js/jdoc/class.ttk__
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
__js/jdoc/func.ttk__
/**
[% INCLUDE js/jdoc/params.ttk -%]
[% IF returns -%]
 *	@return	[% returns %]:
[% END -%]
[% IF params or returns -%]
 *
[% END -%]
 *	[% description %]
 */
__js/jdoc/params.ttk__
[% UNLESS params %][% params = ['parameter'] %][% END -%]
[% FOREACH param = params -%]
 *	@param	[% param %]:
[% END -%]
__js/method.ttk__
[% INCLUDE js/jdoc/func.ttk %]
[% class %].prototype.[% method %] = function ( [% FOREACH param = params %][% param %], [% END %] ) {

}
__licence.ttk__

Copyright (c) [% year %] [% company.name or contact.fullname %] ([% company.address || contact.address %]).
All rights reserved.

[%- SWITCH licence -%]
[% CASE 'perl' -%]
[% INCLUDE licence/perl.ttk -%]
[% CASE 'gpl'  -%]
[% INCLUDE licence/gpl.ttk -%]
[% CASE 'lgpl' -%]
[% INCLUDE licence/lgpl.ttk -%]
[% CASE -%]
[% INCLUDE licence/perl.ttk -%]
[% END  -%]
__licence/gpl.ttk__

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
__licence/gpl_project.ttk__

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
__licence/lgpl.ttk__

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
__licence/perl.ttk__

This module is free software; you can redistribute it and/or modify it under
the same terms as Perl itself. See L<perlartistic>.  This program is
distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.
__perl.ttk__
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
use Getopt::Long;
use Pod::Usage;
use Data::Dumper qw/Dumper/;
use English qw/ -no_match_vars /;
use FindBin qw/$Bin/;

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

	# do stuff here


	return;
}

 =__DATA__

=head1 NAME

[% file %] - <One-line description of commands purpose>

[% INCLUDE perl/pod/VERSION.ttk %]
[% INCLUDE perl/pod/USAGE.ttk %]
[% INCLUDE perl/pod/DESCRIPTION.ttk %]
[% INCLUDE perl/pod/METHODS.ttk %]
[% INCLUDE perl/pod/detailed.ttk %]
=head1 AUTHOR

[% contact.fullname %] - ([% contact.email %])

=head1 LICENSE AND COPYRIGHT
[% INCLUDE licence.ttk %]
=cut
__perl/AUTOLOAD.ttk__
[% INCLUDE perl/pod.ttk sub => 'AUTOLOAD', vars => ' ' -%]

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
__perl/execption.ttk__
[% IF not vars %][% vars = [ 'search' ] %][% END -%]
[% IF not module %][% module = 'X::Name' %][% END -%]
package [% module %];

=head1 NAME

[% module %] - <One-line description of module's purpose>

[% INCLUDE perl/pod/VERSION.ttk %]
[% INCLUDE perl/pod/SYNOPSIS.ttk %]
[% INCLUDE perl/pod/DESCRIPTION.ttk %]
[% INCLUDE perl/pod/METHODS.ttk %]
[% INCLUDE perl/pod/detailed.ttk %]
=head1 AUTHOR

[% contact.fullname %] - ([% contact.email %])
<Author name(s)>  (<contact address>)

=head1 LICENSE AND COPYRIGHT
[% INCLUDE licence.ttk %]
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

use Execption::Class (
	[% module %] => {
		isa			=> '',
		description	=> 'An execption class',
		fields		=> qw//,
		alias		=> '',
	},
);

1;

 =__END__

__perl/execption/base.ttk__
[% IF not vars %][% vars = [ 'search' ] %][% END -%]
[% IF not module %][% module = 'X::Base' %][% END -%]
package [% module %];

=head1 NAME

[% module %] - <One-line description of module's purpose>

[% INCLUDE perl/pod/VERSION.ttk %]
[% INCLUDE perl/pod/SYNOPSIS.ttk %]
[% INCLUDE perl/pod/DESCRIPTION.ttk %]
[% INCLUDE perl/pod/METHODS.ttk %]
[% INCLUDE perl/pod/detailed.ttk %]
=head1 AUTHOR

[% contact.fullname %] - ([% contact.email %])
<Author name(s)>  (<contact address>)

=head1 LICENSE AND COPYRIGHT
[% INCLUDE licence.ttk %]
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

use CGI;
use base qw/Exporter/;

our $VERSION = 0.0.1;
our @EXPORT = qw//;
our @EXPORT_OK = qw//;

[% INCLUDE perl/pod.ttk return => mod -%]

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
__perl/find.ttk__
[% IF not vars %][% vars = [ 'search' ] %][% END -%]
[% IF not sub %][% sub = 'find_files' %][% END -%]
[% INCLUDE perl/pod.ttk vars => [ 'dir', vars ]-%]

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
__perl/if.ttk__
if (  ) {

}
elsif (  ) {

}
else {

}
__perl/package.ttk__
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
use CGI;
use Data::Dumper qw/Dumper/;
use English qw/ -no_match_vars /;
use base qw/Exporter/;

our $VERSION     = version->new('0.0.1');
our @EXPORT_OK   = qw//;
our %EXPORT_TAGS = ();
#our @EXPORT      = qw//;

sub new {
	my $caller = shift;
	my $class  = ref $caller ? ref $caller : $caller;
	my %param  = @_;
	my $self   = \%param;

	bless $self, $class;

	return $self;
}

1;

 =__END__

=head1 NAME

[% module %] - <One-line description of module's purpose>

[% INCLUDE perl/pod/VERSION.ttk %]
[% INCLUDE perl/pod/SYNOPSIS.ttk %]
[% INCLUDE perl/pod/DESCRIPTION.ttk %]
[% INCLUDE perl/pod/METHODS.ttk %]

[% INCLUDE perl/pod.ttk return => module, sub => 'new' -%]

[% INCLUDE perl/pod/detailed.ttk %]
=head1 AUTHOR

[% contact.fullname %] - ([% contact.email %])
<Author name(s)>  (<contact address>)

=head1 LICENSE AND COPYRIGHT
[% INCLUDE licence.ttk %]
=cut
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

[% INCLUDE perl/pod/VERSION.ttk %]
[% INCLUDE perl/pod/SYNOPSIS.ttk %]
[% INCLUDE perl/pod/DESCRIPTION.ttk %]
[% INCLUDE perl/pod/METHODS.ttk %]

[% FOREACH sig = sigs %]
[%- matches = sig.match('^,?(\w+)[(](.*)$') -%]
=head3 C<[% matches.0 %] ([% matches.1.split(',').join(', ') %])>
[% FOREACH arg = matches.1.split(',') %]
Arg: C<[% arg %]> - type (detail) - description
[% END %]
Return: type - description

Description:

[% END %]

[% INCLUDE perl/pod/detailed.ttk %]
=head1 AUTHOR

[% contact.fullname %] - ([% contact.email %])
<Author name(s)>  (<contact address>)

=head1 LICENSE AND COPYRIGHT
[% INCLUDE licence.ttk %]
=cut
__perl/package/gtk2.ttk__
[% IF not vars %][% vars = [ 'search' ] %][% END -%]
[% IF not module %][% module = 'Module::Name' %][% END -%]
[% IF not super %][% super = 'Gtk2::Button::' %][% END -%]
package [% module %];

=head1 NAME

[% module %] - <One-line description of module's purpose>

[% INCLUDE perl/pod/VERSION.ttk %]
[% INCLUDE perl/pod/SYNOPSIS.ttk %]
[% INCLUDE perl/pod/DESCRIPTION.ttk %]
[% INCLUDE perl/pod/METHODS.ttk %]
[% INCLUDE perl/pod/detailed.ttk %]
=head1 AUTHOR

[% contact.fullname %] - ([% contact.email %])
<Author name(s)>  (<contact address>)

=head1 LICENSE AND COPYRIGHT
[% INCLUDE licence.ttk %]
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

[% INCLUDE perl/pod.ttk return => module -%]

# effectivly serves as new
sub INIT_INSTANCE {
	my $self = shift;

}


1;

 =__END__

__perl/pod.ttk__
[% IF not vars %][% vars = [ 'var1', 'var2' ] %][% END -%]
=head3 C<[% sub || 'sub' %] ( [% FOREACH var = vars %]$[% var %],[% END %] )>
[% FOREACH var = vars %]
Param: C<$[% var %]> - type (detail) - description
[% END -%]

Return: [% return %] -

Description:

=cut
__perl/pod/DESCRIPTION.ttk__

=head1 DESCRIPTION

A full description of the module and its features.

May include numerous subsections (i.e., =head2, =head3, etc.).
__perl/pod/METHODS.ttk__

=head1 SUBROUTINES/METHODS

A separate section listing the public components of the module's interface.

These normally consist of either subroutines that may be exported, or methods
that may be called on objects belonging to the classes that the module
provides.

Name the section accordingly.

In an object-oriented module, this section should begin with a sentence (of the
form "An object of this class represents ...") to give the reader a high-level
context to help them understand the methods that are subsequently described.
__perl/pod/NAME.ttk__

__perl/pod/SYNOPSIS.ttk__

=head1 SYNOPSIS

   use [% module %];

   # Brief but working code example(s) here showing the most common usage(s)
   # This section will be as far as many users bother reading, so make it as
   # educational and exemplary as possible.
__perl/pod/USAGE.ttk__
=head1 SYNOPSIS

   [% module %] [option]

 OPTIONS:
  -o --other         other option

  -v --verbose       Show more detailed option
     --version       Prints the version information
     --help          Prints this help information
     --man           Prints the full documentation for [% module %]

__perl/pod/VERSION.ttk__
=head1 VERSION

This documentation refers to [% module %] version 0.1.
__perl/pod/detailed.ttk__
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
__perl/pod/package.ttk__
[% IF not vars %][% vars = [ 'search' ] %][% END -%]
[% IF not module %][% module = 'Module::Name' %][% END -%]
=head1 NAME

[% module %] - <One-line description of module's purpose>

[% INCLUDE perl/pod/VERSION.ttk %]
[% INCLUDE perl/pod/SYNOPSIS.ttk %]
[% INCLUDE perl/pod/DESCRIPTION.ttk %]
[% INCLUDE perl/pod/METHODS.ttk %]

=cut

[% INCLUDE perl/pod.ttk return => module, sub => 'new' -%]

[% INCLUDE perl/pod/detailed.ttk %]
=head1 AUTHOR

[% contact.fullname %] - ([% contact.email %])

=head1 LICENSE AND COPYRIGHT
[% INCLUDE licence.ttk %]
=cut

__perl/simple.ttk__
#!/usr/bin/perl -T

use strict;
use warnings;



 =__DATA__
__perl/sub.ttk__
[% IF not vars %][% vars = [ 'var1', 'var2' ] %][% END -%]
[% IF not sub %][% sub = 'sub' %][% END -%]
[% INCLUDE perl/pod.ttk -%]

sub [% sub %] {
	my ( [% FOREACH var = vars %]$[% var %], [% END %] ) = @_;

}
__perl/sub/class.ttk__
[% IF not vars %][% vars = [ 'var1', 'var2' ] %][% END -%]
[% IF not sub %][% sub = 'class_method' %][% END -%]
[% INCLUDE perl/pod.ttk -%]

sub [% sub %] {
	my $caller = shift;
	my $class = (ref $caller) ? ref $caller : $caller;
	my ( [% FOREACH var = vars %]$[% var %], [% END %] ) = @_;

}
__perl/sub/method.ttk__
[% IF not vars %][% vars = [ 'var1', 'var2' ] %][% END -%]
[% IF not sub %][% sub = 'method' %][% END -%]
[% INCLUDE perl/pod.ttk -%]

sub [% sub %] {
	my ( $self, %args ) = @_;
	my ( [% FOREACH var = vars %]$[% var %], [% END %] ) = @_;
	#my $dbh  = $self->{dbh};
	#my $q    = $self->{cgi};
	#my $set  = $self->{set};

}
__perl/sub/object.ttk__
[% IF not vars %][% vars = [ 'var1', 'var2' ] %][% END -%]
[% IF not sub %][% sub = 'method' %][% END -%]
[% INCLUDE perl/pod.ttk -%]

sub [% sub %] {
	my ( $self, %args ) = @_;
	my ( [% FOREACH var = vars %]$[% var %], [% END %] ) = @_;
	#my $dbh  = $self->{dbh};
	#my $q    = $self->{cgi};
	#my $set  = $self->{set};

}
__perl/test.ttk__
[% IF not module %][% module = 'module' %][% END -%]
[% IF not obj    %][% obj    = 'obj'    %][% END -%]
[% IF not tests  %][% tests  = 10       %][% END -%]
#!/usr/bin/perl -w

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
__perl/test/00-load.t__
[% IF not module %][% module = 'module'   %][% END -%]
#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 1;

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
use Test::More tests => 3;

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

eval { require Test::Kwalitee; Test::Kwalitee->import() };

plan( skip_all => 'Test::Kwalitee not installed; skipping' ) if $@;
__perl/test/pod-coverage.t__
#!/usr/bin/perl

use strict;
use warnings;
use Test::More;

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

eval { require Test::Spelling; Test::Spelling->import() };

plan skip_all => "Test::Spelling required for testing POD coverage" if $@;

add_stopwords(qw//);
all_pod_files_spelling_ok();
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
__php.ttk__
#!/usr/bin/php
<?php

/**
 *
 *
 */


?>
__php/class.ttk__
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
__w3c/dtd/HTML/2.0__
<!DOCTYPE html PUBLIC "-//IETF//DTD HTML 2.0//EN">
__w3c/dtd/HTML/3.2__
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
__w3c/dtd/HTML/4.01/frameset__
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN"
   "http://www.w3.org/TR/html4/frameset.dtd">
__w3c/dtd/HTML/4.01/strict__
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN"
   "http://www.w3.org/TR/html4/strict.dtd">
__w3c/dtd/HTML/4.01/transitional__
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
__w3c/dtd/MathML/1.01__
<!DOCTYPE math SYSTEM
	"http://www.w3.org/Math/DTD/mathml1/mathml.dtd">
__w3c/dtd/MathML/2.0__
<!DOCTYPE math PUBLIC "-//W3C//DTD MathML 2.0//EN"
	"http://www.w3.org/TR/MathML2/dtd/mathml2.dtd">
__w3c/dtd/SVG/1.0__
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.0//EN"
	"http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd">
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
__w3c/dtd/xhtml+mathml+svg__
<!DOCTYPE html PUBLIC
    "-//W3C//DTD XHTML 1.1 plus MathML 2.0 plus SVG 1.1//EN"
    "http://www.w3.org/2002/04/xhtml-math-svg/xhtml-math-svg.dtd">
__w3c/xml.xml__
[% IF not version %][% version = 1.0 %][% END -%]
<?xml version="[% version %]" encoding="utf-8"?>
__xhtml.html__
[% UNLESS title %][% title = 'Untitled Document' %][% END -%]
[% INCLUDE x3c/xml.xml %]
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
__xml/cdata.xml__
<![CDATA[

]]>
