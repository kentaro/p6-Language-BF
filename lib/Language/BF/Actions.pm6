use v6;

unit class Language::BF::Actions;

method TOP($/) {
    $/.make: $/<token>».made
}

method token:sym<prev>($/) {
    $/.make: '$ptr--;'
}

method token:sym<next>($/) {
    $/.make: '$ptr++;'
}

method token:sym<incr>($/) {
    $/.make: '@data[$ptr]++;'
}

method token:sym<decr>($/) {
    $/.make: '@data[$ptr]--;'
}

method token:sym<getc>($/) {
    $/.make: '@data[$ptr] = $*IN.getc;'
}

method token:sym<putc>($/) {
    $/.make: '@data[$ptr].chr.print;'
}

method token:sym<begl>($/) {
    $/.make: 'while @data[$ptr] {'
}

method token:sym<endl>($/) {
    $/.make: '}'
}
