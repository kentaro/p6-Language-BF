use v6;

unit class Language::BF;

use Language::BF::Grammar;
use Language::BF::Actions;

multi method run($file) {
    my $actions = Language::BF::Actions.new;
    my $result  = Language::BF::Grammar.parsefile($file, :actions($actions));

    if $result {
        my $code = qq:to/CODE/;
        my \@data = ();
        my \$ptr  = 0;
        {$result.made.join("\n")};
        CODE
        EVAL($code);
    } else {
        die "Failed to parse";
    }
}
