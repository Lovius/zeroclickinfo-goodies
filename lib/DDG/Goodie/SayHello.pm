package DDG::Goodie::SayHello;
# ABSTRACT: Make DuckDuckGo say hello
# author  lovius@gmail.com
use DDG::Goodie;

primary_example_queries 'Say Hello';
secondary_example_queries 'say hello';
description 'Say hello from DuckDuckGo';
name 'Say Hello';
code_url 'https://github.com/...';
category 'trivia';
topics 'geek';

zci is_cached => 1;
zci answer_type => "say_hello";

#just testing out how it works,
# looks for the phrase 'say hello' at the start.
triggers start => 'Say Hello','say hello';

handle remainder => sub {
    #return unless  /Say\sHello/i;
    return 'DuckDuckGo Says Hello, Find out more at http://duckduckhack.com';
    return;
};
zci is_cached => 1;
1;
