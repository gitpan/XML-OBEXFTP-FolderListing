use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'XML::OBEXFTP::FolderListing',
    license             => 'perl',
    dist_author         => 'Zoffix Znet <zoffix@cpan.org>',
    dist_version_from   => 'lib/XML/OBEXFTP/FolderListing.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'Class::Accessor::Grouped' => 0,
        'XML::Simple'           => 2.18,
        'Carp'                  => 1.04,
        'perl' => '5.006',
    },
    add_to_cleanup      => [ 'XML-OBEXFTP-FolderListing-*' ],
    create_makefile_pl => 'traditional',
);
if ( $ENV{RELEASE_TESTING} ) {
    system('pod2text lib/XML/OBEXFTP/FolderListing.pm > README');
}

$builder->create_build_script();
