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
