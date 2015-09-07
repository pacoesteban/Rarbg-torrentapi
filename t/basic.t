use strict;
use Test::More;

BEGIN {
    use_ok('Rarbg::torrentapi');
}

can_ok('Rarbg::torrentapi', qw( new search list ));

my %attr = (
);

done_testing;
