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

