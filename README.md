[![Build Status](https://travis-ci.org/kianmeng/webservice-ipapi.svg?branch=master)](https://travis-ci.org/kianmeng/webservice-ipapi)
[![codecov](https://codecov.io/gh/kianmeng/webservice-ipapi/branch/master/graph/badge.svg)](https://codecov.io/gh/kianmeng/webservice-ipapi)
[![Coverage Status](https://coveralls.io/repos/kianmeng/webservice-ipapi/badge.svg?branch=master)](https://coveralls.io/r/kianmeng/webservice-ipapi?branch=master)
[![Kwalitee status](http://cpants.cpanauthors.org/dist/WebService-IPAPI.png)](http://cpants.charsbar.org/dist/overview/WebService-IPAPI)
[![Cpan license](https://img.shields.io/cpan/l/WebService-IPAPI.svg)](https://metacpan.org/release/WebService-IPAPI)
[![Cpan version](https://img.shields.io/cpan/v/WebService-IPAPI.svg)](https://metacpan.org/release/WebService-IPAPI)

# NAME

WebService::IPAPI - Perl library for using IPAPI, https://ipapi.com.

# SYNOPSIS

    use WebService::IPAPI;

    my $ipapi = WebService::IPAPI->new(access_key => 'foobar');
    $ipapi->query('8.8.8.8');
    $ipapi->query(['8.8.8.8', '8.8.4.4']);

# DESCRIPTION

WebService::IPAPI is Perl library for obtaining information on IPv4 or IPv6
address.

# DEVELOPMENT

Source repo at [https://github.com/kianmeng/webservice-ipapi](https://github.com/kianmeng/webservice-ipapi).

How to contribute? Follow through the [CONTRIBUTING.md](https://github.com/kianmeng/webservice-ipapi/CONTRIBUTING.md) document to setup your development environment.

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2018-2019 by Kian Meng, Ang.

This is free software, licensed under:

    The Artistic License 2.0 (GPL Compatible)

# AUTHOR

Kian Meng, Ang <kianmeng@users.noreply.github.com>
