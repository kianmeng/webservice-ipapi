requires 'perl', '5.010';
requires 'namespace::clean';
requires 'strictures', '2';

requires 'JSON';
requires 'Moo';
requires 'MooX::Enumeration';
requires 'REST::Client';
requires 'Role::REST::Client';
requires 'Types::Common::String', '1.004002';
requires 'Types::Standard', '1.004002';

on test => sub {
    requires 'Pod::Coverage::TrustPod';
    requires 'Test::CPAN::Meta';
    requires 'Test::DistManifest';
    requires 'Test::Exception';
    requires 'Test::HasVersion';
    requires 'Test::Kwalitee';
    requires 'Test::More';
    requires 'Test::Pod::Coverage';
    requires 'Test::Warn';
};

on 'develop' => sub {
    recommends 'Devel::NYTProf';
    requires 'App::CISetup';
    requires 'App::Software::License';
    requires 'Dist::Milla';
};
