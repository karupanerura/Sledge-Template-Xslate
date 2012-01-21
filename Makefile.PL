use inc::Module::Install;
name 'Sledge-Template-Xslate';
all_from 'lib/Sledge/Template/Xslate.pm';
readme_from 'lib/Sledge/Template/Xslate.pm';
readme_pod_from 'lib/Sledge/Template/Xslate.pm';
githubmeta;

# requires '';

tests 't/*.t';
author_tests 'xt';

requires 'parent';
requires 'Text::Xslate';
requires 'File::Spec::Memoized';
requires 'Memoize';
requires 'Sledge::Template';
requires 'Sledge::Exceptions';

test_requires 'Test::More';
test_requires 'Test::Requires';
test_requires 'Sledge::TestPages';

auto_set_repository;
WriteAll;
