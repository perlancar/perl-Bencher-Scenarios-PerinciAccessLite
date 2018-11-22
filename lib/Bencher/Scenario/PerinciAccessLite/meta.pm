package Bencher::Scenario::PerinciAccessLite::meta;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark meta action',
    participants => [
        {
            name => 'request',
            module => 'Perinci::Access::Lite',
            code_template => 'state $pa = Perinci::Access::Lite->new; $pa->request(meta => "/Perinci/Examples/Tiny/noop")',
        },
        {
            name => 'new+request',
            module => 'Perinci::Access::Lite',
            code_template => 'Perinci::Access::Lite->new->request(meta => "/Perinci/Examples/Tiny/noop")',
        },
    ],
};

1;
# ABSTRACT:
