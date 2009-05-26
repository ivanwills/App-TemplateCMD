use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'App::TemplateCMD',
    license             => 'perl',
    dist_author         => 'Ivan Wills <ivan.wills@gmail.com>',
    dist_version_from   => 'lib/App/TemplateCMD.pm',
    build_requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'App-TemplateCMD-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
