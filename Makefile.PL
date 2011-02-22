use inc::Module::Install;
name 'Sledge-Template-Xslate';
all_from 'lib/Sledge/Template/Xslate.pm';
readme_from 'lib/Sledge/Template/Xslate.pm';
readme_pod_from 'lib/Sledge/Template/Xslate.pm';
githubmeta;

# requires '';

tests 't/*.t';
author_tests 'xt';

requires 'version';
requires 'parent';
requires 'Text::Xslate';
requires 'File::Spec::Memoized';
requires 'File::Basename';
requires 'Memoize';
requires 'Sledge';

build_requires 'Test::More';
build_requires 'Test::Requires';
build_requires 'Sledge::TestPages';

auto_set_repository;
auto_include;
WriteAll;
