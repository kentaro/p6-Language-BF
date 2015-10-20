# p6-Language-BF

BF to Perl6 translator.

## SYNOPSIS

Given a code like below:

```brainfuck
++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<<
+++++++++++++++.>.+++.------.--------.>+.>.
```

Pass the name of the file which contains the code above.

```perl6
use Language::BF;
Language::BF.new.run($file);
```

Then you'll see such an output below:

```
Hello World!
```

## AUTHOR

Kentaro Kuribayashi

## COPYRIGHT AND LICENSE

Copyright 2015 Kentaro Kuribayashi

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.
