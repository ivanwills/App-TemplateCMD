package App::TemplateCMD::Command::Cat;

# Created on: 2008-03-26 13:43:41
# Create by:  ivanw
# $Id$
# $Revision$, $HeadURL$, $Date$
# $Revision$, $Source$, $Date$

use strict;
use warnings;
use version;
use Carp;
use Data::Dumper qw/Dumper/;
use English qw/ -no_match_vars /;
use base qw/App::TemplateCMD::Command/;

our $VERSION     = version->new('0.5.3');
our @EXPORT_OK   = qw//;
our %EXPORT_TAGS = ();

sub process {
    my ($self, $cmd, %option) = @_;

    my ($data) = $self->get_template($option{files}[0], $cmd);

    $data->{text} =~ s/^\0=__/__/gxms;

    return $data->{text};
}

sub help {
    my ($self) = @_;

    return <<"HELP";
$0 cat template

Prints out he contents of a template.
HELP
}

1;

__END__

=head1 NAME

App::TemplateCMD::Command::Cat - Command to print out a template (unprocessed)

=head1 VERSION

This documentation refers to App::TemplateCMD::Command::Cat version 0.5.3.

=head1 SYNOPSIS

   use App::TemplateCMD::Command::Cat;

   # Brief but working code example(s) here showing the most common usage(s)
   # This section will be as far as many users bother reading, so make it as
   # educational and exemplary as possible.

=head1 DESCRIPTION

=head1 SUBROUTINES/METHODS

=head3 C<process ( $cmd, %option )>

Return: the content of the template

Description: returns the contents of the supplied template unprocessed

=head2 C<help ()>

Returns the help text

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
