package Bencher::Scenario::PerinciAccessLite::list;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark list action',
    participants => [
        {
            name => 'request',
            module => 'Perinci::Access::Lite',
            code_template => 'state $pa = Perinci::Access::Lite->new; $pa->request(list => "/Perinci/Examples/Tiny/")',
        },
        {
            name => 'new+request',
            module => 'Perinci::Access::Lite',
            code_template => 'Perinci::Access::Lite->new->request(list => "/Perinci/Examples/Tiny/")',
        },
    ],
};

1;
# ABSTRACT:
