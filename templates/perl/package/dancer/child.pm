[% IF not vars %][% vars = [ 'search' ] %][% END -%]
[% IF not module -%]
    [%- IF out.match('^lib') -%]
        [%- out = out.replace('lib/', '') -%]
        [%- out = out.replace('[.]pm', '') -%]
        [%- out = out.replace('/', '::', 1) -%]
        [%- module = out -%]
    [%- END -%]
[% END -%]
[% IF not module  %][% module       = 'Module::Name' %][% END -%]
[% IF not version %][% version.perl = '0.001'        %][% END -%]
[% IF not base    %][% base         = 'Some::Thing'  %][% END -%]
[% IF not prefix    -%]
    [%- prefix = module -%]
    [%- prefix = prefix.replace('^.*(::)', '') -%]
    [%- prefix = prefix.replace('::', '_', 'g') -%]
    [%- prefix = prefix.lower -%]
[% END -%]
[% IF not app -%]
    [%- app = module -%]
    [%- app = app.replace('(::)([^:])+$', '') -%]
    [%- app = app.replace('::', '_', 'g') -%]
    [%- app = app.lower -%]
[% END -%]
package [% module %];

# Created on: [% date %] [% time %]
# Create by:  [% contact.fullname or user %]
# $Id$
# $Revision$, $HeadURL$, $Date$
# $Revision$, $Source$, $Date$

use Dancer2  appname => '[% app %]';
use feature qw/:5.10/;
use warnings;
use version;
use Carp;
use Scalar::Util;
use List::Util;
#use List::MoreUtils;
use Data::Dumper qw/Dumper/;
use English qw/ -no_match_vars /;

our $VERSION = version->new('0.0.1');

prefix '/[% prefix %]';

get '/' => sub {
    my $data = resultset('Data');
    local $Data::Dumper::Sortkeys = 1;
    warn Dumper { params };

    return responce($json);
};

sub responce {
    my ($json) = @_;

    if (params->{callback}) {
        return params->{callback} . '(' . encode_json($json) . ');';
    }

    push_header 'Access-Control-Allow-Origin'      => '*';
    push_header 'Access-Control-Allow-Credentials' => 'true';
    push_header 'Access-Control-Allow-Methods'     => 'POST, GET, PUT, DELETE, OPTIONS';
    push_header 'Access-Control-Allow-Headers'     => 'Content-Type';

    return encode_json($json);
}

start;

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

=head1 LICENSE AND COPYRIGHT
[% INCLUDE licence.txt %]
=cut
