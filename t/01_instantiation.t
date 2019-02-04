use strict;
use utf8;
use warnings;

use Test::More;

use WebService::IPAPI;

my $ipapi;

$ipapi = WebService::IPAPI->new(api_key => 'foobar');
is($ipapi->api_url, 'http://api.ipapi.com/api/', 'expect API URL match');
is($ipapi->api_key, 'foobar', 'expect api key match');

foreach my $plan (qw(standard business business_pro)) {
    $ipapi = WebService::IPAPI->new(api_key => 'foobar', api_plan => $plan);
    is($ipapi->api_url, 'https://api.ipapi.com/api/', qq|expect API URL match for $plan plan|);
}

done_testing;
