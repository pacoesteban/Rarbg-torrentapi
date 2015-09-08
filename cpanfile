requires 'perl', '5.008005';

requires 'Moose', '0';
requires 'JSON', '0';
requires 'LWP::UserAgent', '0';

on test => sub {
    requires 'Test::More', '0.96';
    requires 'Test::Pod', '0';
    requires 'JSON', '0';
};
