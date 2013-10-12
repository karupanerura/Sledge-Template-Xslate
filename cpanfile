requires 'File::Spec::Memoized';
requires 'Memoize';
requires 'Sledge::Exception';
requires 'Sledge::Template';
requires 'Text::Xslate';
requires 'parent';

on configure => sub {
    requires 'CPAN::Meta';
    requires 'CPAN::Meta::Prereqs';
    requires 'Module::Build';
    requires 'perl', '5.008_001';
};

on test => sub {
    requires 'Class::Accessor';
    requires 'Sledge::Pages::Compat';
    requires 'Sledge::TestPages';
    requires 'Test::More';
    requires 'Test::Requires';
};

on develop => sub {
    requires 'Test::Perl::Critic';
};
