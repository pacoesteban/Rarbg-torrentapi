use strict;
use Test::More;
use Test::RequiresInternet ( 'torrentapi.org', => 443 );

BEGIN {
    use_ok('Rarbg::torrentapi');
}

can_ok( 'Rarbg::torrentapi',
    qw( new search list _renew_token _token_valid _make_request ) );

my $tapi = new_ok('Rarbg::torrentapi');
like( $tapi->_token, qr/\w{10}/, 'Token test' );
diag( "I got token " . $tapi->_token );
ok( $tapi->_token_valid, 'Token time test' );
ok( $tapi->ranked == 0 );
is( $tapi->_format, 'json_extended' );
my $list = $tapi->list;
isa_ok( $list->[0], 'Rarbg::torrentapi::Res' );
my $res = $tapi->search(
    {
        search_string => 'qwerasdf'
    }
);
isa_ok( $res, 'Rarbg::torrentapi::Error' );

done_testing;
