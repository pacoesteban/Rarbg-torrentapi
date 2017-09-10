# NAME

Rarbg::torrentapi - Wrapper around Rarbg torrentapi ([https://torrentapi.org/apidocs\_v2.txt](https://torrentapi.org/apidocs_v2.txt))

# SYNOPSIS

    use Rarbg::torrentapi;
    my $tapi = Rarbg::torrentapi->new();
    
    # list lastest torrents
    my $last_added = $tapi->list();
    
    # list torrents sorted by seeders
    my $last_added = $tapi->list({
        sort => 'seeders',
        limit => 50,
        category => 'tv'
    });

    # search by string
    # You can use all attributes also
    my $search = $tapi->search({
        search_string => 'the beatles',
        category => '23;24;25;26',
        min_seeders => 20
    });

    # search by imdb id
    my $search = $tapi->search({
        search_imdb => 'tt123456'
    });

    # search by tvrage id
    my $search = $tapi->search({
        search_tvrage => '123456'
    });

    # search by tvdb id
    my $search = $tapi->search({
        search_tvdb => '123456'
    });

# DESCRIPTION

Rarbg::torrentapi is a simple wrapper around Rarbg's torrentapi.

# ATTRIBUTES

Those attributes can be used on all public methods. In fact you can use them also when creating the object. Some of them make more sense at creation time, some others when calling the method. It's your call.

The only difference is that you should pass them as an anonymous hash if you pass them to a method.

You can find more info about their values at [https://torrentapi.org/apidocs\_v2.txt](https://torrentapi.org/apidocs_v2.txt)

## search\_string

## search\_imdb

This is the Imdb id (http://imdb.com) in the form 'tt123456'

## search\_tvrage

## search\_tvdb

## category

Category can be quite confusing.
It accepts 'tv' and 'movies'. But, for the rest of categories only accepts its id numbers (or a semi-colon separated list of them).
Check Rarbg website to see what those are. They are not documented anywhere.

## limit

It can be 25, 50 or 100.

## sort

It can be seeders, leechers or last

## min\_seeders

## min\_leechers

## ranked

This marks if you want to get all indexed torrents or just the ones from rarbg team.
Defaults to all (0).

# METHODS

## new

Just a simple constructor.

## search

Makes a call to the API in 'search' mode. It returns either a Rarbg::torrentapi::Error or an array of [Rarbg::torrentapi::Res](https://metacpan.org/pod/Rarbg::torrentapi::Res).

## list

Makes a call to the API in 'list' mode. It returns either a Rarbg::torrentapi::Error or an array of [Rarbg::torrentapi::Res](https://metacpan.org/pod/Rarbg::torrentapi::Res).

# AUTHOR

Paco Esteban <paco@onna.be>

# COPYRIGHT

Copyright 2015- Paco Esteban

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
