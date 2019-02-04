use strict;
use utf8;
use warnings;

use Test::More;
use WebService::IPAPI;

BEGIN {
    if (!defined $ENV{IPAPI_ACCESS_KEY}) {
        plan skip_all => '$ENV{IPAPI_ACCESS_KEY} not set, skipping live tests'
    }
}

my $got;
my $ipapi = WebService::IPAPI->new(api_key => $ENV{IPAPI_ACCESS_KEY});

$got = $ipapi->query('8.8.8.8');
is($got->{country_code}, "US", 'expect country code match');

done_testing;
