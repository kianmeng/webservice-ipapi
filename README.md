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

    my $ipapi = WebService::IPAPI->new(api_key => 'foobar');
    $ipapi->query('8.8.8.8');

    # Only for Pro plan.
    $ipapi->query(['8.8.8.8', '8.8.4.4']);

# DESCRIPTION

WebService::IPAPI is Perl library for obtaining information on IPv4 or IPv6
address.

# DEVELOPMENT

Source repo at [https://github.com/kianmeng/webservice-ipapi](https://github.com/kianmeng/webservice-ipapi).

How to contribute? Follow through the [CONTRIBUTING.md](https://github.com/kianmeng/webservice-ipapi/blob/master/CONTRIBUTING.md) document to setup your development environment.

# METHODS

## new($api\_key, $api\_plan)

Construct a new WebService::IPAPI instance.

### api\_key

Compulsory. The API access key used to make request through web service.

### api\_plan

Optional. The API subscription plan used when accessing the API. There are two
subscription plans of 'free' and 'paid'. By default, the subscription plan is
'free'. The difference between two subscription plans is only 'paid' plan can
make request through HTTPS encryption protocol.

    # The API request URL is http://api.ipapi.com/api/
    my $ipapi = WebService::IPAPI->new(api_key => 'foo');
    print $ipapi->api_url;

    # The API request URL is https://api.ipapi.com/api/
    my $ipapi = WebService::IPAPI->new(api_key => 'foo', api_plan => 'paid');
    print $ipapi->api_url;

### api\_url

The default API hostname and path. The protocol depends on the subscription plan.

## lookup($ip\_address)

Query and get an IP address information.

    my $ipapi = WebService::IPAPI->new(api_key => 'foobar');
    $ipapi->query('8.8.8.8');

## bulk\_lookup($ip\_address)

Only for Paid subscription plan. Query and get multiple IP addresses
information.

    my $ipapi = WebService::IPAPI->new(api_key => 'foobar', api_plan => 'paid');
    $ipapi->query(['8.8.8.8', '8.8.4.4']);

## check()

Look up the IP address details of the client which made the web service call.

    my $ipapi = WebService::IPAPI->new(api_key => 'foobar');
    $ipapi->check();

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2018-2019 by Kian Meng, Ang.

This is free software, licensed under:

    The Artistic License 2.0 (GPL Compatible)

# AUTHOR

Kian Meng, Ang <kianmeng@users.noreply.github.com>
