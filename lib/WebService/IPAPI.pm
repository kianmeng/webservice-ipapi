package WebService::IPAPI;

use strict;
use 5.008_005;
our $VERSION = '0.01';

1;
__END__

=encoding utf-8

=head1 NAME

WebService::IPAPI - Perl library for using IPAPI, https://ipapi.com.

=head1 SYNOPSIS

  use WebService::IPAPI;

  my $ipapi = WebService::IPAPI->new(access_key => 'foobar');
  $ipapi->query('8.8.8.8');
  $ipapi->query(['8.8.8.8', '8.8.4.4']);

=head1 DESCRIPTION

WebService::IPAPI is Perl library for obtaining information on IPv4 or IPv6
address.

=head1 DEVELOPMENT

Source repo at L<https://github.com/kianmeng/webservice-ipapi|https://github.com/kianmeng/webservice-ipapi>.

How to contribute? Follow through the L<CONTRIBUTING.md|https://github.com/kianmeng/webservice-ipapi/blob/master/CONTRIBUTING.md> document to setup your development environment.

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2018-2019 by Kian Meng, Ang.

This is free software, licensed under:

    The Artistic License 2.0 (GPL Compatible)

=head1 AUTHOR

Kian Meng, Ang E<lt>kianmeng@users.noreply.github.comE<gt>

=cut
