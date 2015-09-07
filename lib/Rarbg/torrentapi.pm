package Rarbg::torrentapi;

use strict;
use 5.008_005;
our $VERSION = '0.01';
use Moose;

sub search {
    #body ...
}

sub list {
    #body ...
}

no Moose;
__PACKAGE__->meta->make_immutable;
1;
__END__

=encoding utf-8

=head1 NAME

Rarbg::torrentapi - Wrapper around Rarbg torrentapi (https://torrentapi.org/apidocs_v2.txt)

=head1 SYNOPSIS

  use Rarbg::torrentapi;

=head1 DESCRIPTION

Rarbg::torrentapi is a simple wrapper around Rarbg's torrentapi (JSON format)

=head1 ATTRIBUTES

=head2 token

This attribute is ro. It's get automatically on every first request. It remains cached for further requests. As per API specification, it will expire in 15 minutes.

=head1 METHODS

=head2 new

Just a simple constructor.

=head2 search

Calls Rarbg::torrentapi::Call and passes a Rarbg::torrentapi::Req formated for search.

=head2 list

Calls Rarbg::torrentapi::Call and passes a Rarbg::torrentapi::Req formated for list.

=head1 AUTHOR

Paco Esteban E<lt>paco@onna.beE<gt>

=head1 COPYRIGHT

Copyright 2015- Paco Esteban

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

=cut
