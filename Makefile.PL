use 5.008001;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

die 'OS X reqiured' unless $^O eq 'darwin' and -x '/usr/bin/osascript';

WriteMakefile(
    NAME         => 'App::mv2trash',
    AUTHOR       => q{Dan Kogai <dankogai+cpan@gmail.com>},
    VERSION_FROM => 'bin/mv2trash',
    ABSTRACT           => 'move (files|folder)s? to trash in OS X',
    LICENSE            => 'Artistic_2_0',
    PL_FILES           => {},
    MIN_PERL_VERSION   => 5.008001,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        #'ABC'              => 1.6,
        #'Foo::Bar::Module' => 5.0401,
    },
    EXE_FILES => ['bin/mv2trash'],
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES    => 'App-mv2trash-*' },
);
