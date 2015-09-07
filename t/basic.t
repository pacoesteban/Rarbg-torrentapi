use strict;
use Test::More;

BEGIN {
    use_ok('Rarbg::torrentapi');
}

can_ok('Rarbg::torrentapi', qw( new search_torrent ));

my %attr = (
);

done_testing;
