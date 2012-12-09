package DDG::Goodie::SayHello;
# ABSTRACT: Make DuckDuckGo say hello
<<<<<<< HEAD
# author  lovius@gmail.com
=======
# author M Lovius 
>>>>>>> 2a363a7b3c6587c8a09f40a86d0b4a9336718f08
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
