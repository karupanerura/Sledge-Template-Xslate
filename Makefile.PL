use 5.010.001;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Sledge::Template::Xslate',
    VERSION_FROM      => 'lib/Sledge/Template/Xslate.pm', # finds $VERSION
    PREREQ_PM         => {
        'version'              => 0,
        'parent'               => 0,
        'Text::Xslate'         => 0,
        'File::Spec::Memoized' => 0,
        'File::Basename'       => 0,
        'Memoize'              => 0,
        'Sledge'               => 0, # It isn't CPAN module.
    }, # e.g., Module::Name => 1.1
    BUILD_REQUIRES    => {
        'Test::More'           => 0,
	'Test::Requires'       => 0,
        'Sledge::TestPages'    => 0, # It isn't CPAN module.
    },
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Sledge/Template/Xslate.pm', # retrieve abstract from module
       AUTHOR         => 'Kenta Sato <kenta.sato.1990@gmail.com>') : ()),
);
