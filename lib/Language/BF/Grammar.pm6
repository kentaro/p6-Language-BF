use v6;

unit grammar Language::BF::Grammar;

token TOP { ^ [ <token> || . ]* $ }

proto token token { <...> }

token token:sym<prev> { '<' }
token token:sym<next> { '>' }
token token:sym<incr> { '+' }
token token:sym<decr> { '-' }
token token:sym<putc> { '.' }
token token:sym<getc> { ',' }
token token:sym<begl> { '[' }
token token:sym<endl> { ']' }
