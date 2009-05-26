package App::TemplateCMD::Command::Help;

# Created on: 2008-03-26 13:58:38
# Create by:  ivanw
# $Id$
# $Revision$, $HeadURL$, $Date$
# $Revision$, $Source$, $Date$

use strict;
use warnings;
use version;
use Carp;
use Scalar::Util;
use List::Util;
use List::MoreUtils qw/uniq/;
use Data::Dumper qw/Dumper/;
use English qw/ -no_match_vars /;
use base qw/App::TemplateCMD::Command/;
use File::Glob;

our $VERSION     = version->new('0.0.1');
our @EXPORT_OK   = qw//;
our %EXPORT_TAGS = ();

sub process {

	my ( $self, $cmd, %option ) = @_;
	my $out;
	my $config = $cmd->config;

	my $command = shift @{ $option{files} };
	my $module;

	if ($command) {
		$module = eval { $cmd->load_cmd($command) };
	}
	if ($module) {
		$out  = $module->help() if $module->can('help');
		$out .= $module->HELP() if $module->can('HELP');

		$out ||= "No help found for $command\n";
	}
	elsif ( $self->can($command) && $command ne 'process' ) {
		$out = $self->$command();
	}
	else {

		my @cmds = sort $self->commands();
		my $cmds = '';

		for my $name (@cmds) {
			my @aliases = sort {length $b <=> length $a} grep { $config->{aliases}{$_} eq lc $name } keys %{ $config->{aliases} };
			$cmds .= '    ' . lc $name;
			$cmds .= ' (' . ( join ', ', @aliases ) . ')' if @aliases;
			$cmds .= "\n";
		}

		$out = <<"OUT";
usage: templatecmd <command> [options] [args]
App::TemplateCMD command-line template system, version $App::TemplateCMD::VERSION.
Type 'templatecmd help <command>' for help on a specific command.
Type 'templatecmd --version' to see the program version.

Available commands:
$cmds

App::TemplateCMD is a command-line interface to Perl's Template Toolkit (TT) templating
system. For help with creating TT templates see 'perldoc Template'
OUT
	}

	return $out;
}

sub commands {
	my ($self) = @_;

	my @cmds;
	my $cmd_path = 'Template/CMD/Command';

	for my $path (@INC) {
		my @modules = glob("$path/$cmd_path/*.pm");
		push @cmds, map { s{^ $path / $cmd_path / (.*) [.]pm $}{$1}xms; $_ } @modules;
	}

	return uniq @cmds;
}

sub help {
	my ($self) = @_;

	return <<"HELP";

HELP
}

sub templates {
	return <<"HELP";
Templates

App::TemplateCMD uses Template Toolkit as its templateing engine the individual
templates can be found in the directories specified by the "$0 config -v"
command. Templates are also found in the data sections of the module 
App::TemplateCMD::Templates or and module found under that name space.

When the templates are passed any --args value specified on the command line
is passed to the template along with values specified by the config file(s)
found. Certain values are over ridden by the program each time it is run
such as the date and time values.

...
HELP
}

1;

__END__

=head1 NAME

App::TemplateCMD::Command::Help - <One-line description of module's purpose>

=head1 VERSION

This documentation refers to App::TemplateCMD::Command::Help version 0.1.


=head1 SYNOPSIS

   use App::TemplateCMD::Command::Help;

   # Brief but working code example(s) here showing the most common usage(s)
   # This section will be as far as many users bother reading, so make it as
   # educational and exemplary as possible.

=head1 DESCRIPTION

=head1 SUBROUTINES/METHODS

=head3 C<aliases ( %args )>

Return: list - list of aliases for the command

Description: This is just a stub for other commands to override to specify their aliases

=head3 C<process ( %args )>

Description: Prints out the general help or specified help command

=head3 C<commands ()>

Description: Lists all commands found for App::TemplateCMD

=head2 C<help ()>

Returns the help text

=head2 C<templates ()>

Returns the templates help text

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
