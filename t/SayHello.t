#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use DDG::Test::Goodie;

zci answer_type => 'say_hello';
zci is_cached => 1;

my $hello = 'DuckDuckGo Says Hello, Find out more at http://duckduckhack.com';
ddg_goodie_test(
        [qw(
                DDG::Goodie::SayHello
        )],
        'Say Hello' => test_zci("$hello"),
        'say hello' => test_zci("$hello"),
);

done_testing;
