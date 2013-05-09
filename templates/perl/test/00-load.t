[% IF not module %][% module = 'module'   %][% END -%]
#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 1 + 1;
use Path::Class;

my $lib = file($0)->parent->parent->subdir('lib');
my @files = $lib->children;

while ( my $file = shift @files ) {
    if ( -d $file ) {
        push @files, $file->children;
    }
    elsif ( $file =~ /[.]pm$/ ) {
        my $module = $file;
        $module =~ s{lib/}{};
        $module =~ s{/}{::}g;
        $module =~ s{[.]pm}{};
        use_ok $module;
    }
}

diag( "Testing [% module %] $[% module %]::VERSION, Perl $], $^X" );
done_testing();
