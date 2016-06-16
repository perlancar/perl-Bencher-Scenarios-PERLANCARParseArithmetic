package Bencher::Scenario::PERLANCARParseArithmetic::parse_arithmetic;

# DATE
# VERSION

our $scenario = {
    summary => 'Benchmark parse_arithmetic()',
    modules => {
    },
    participants => [
        {
            fcall_template => 'PERLANCAR::Parse::Arithmetic::parse_arithmetic(<expr>)',
        },
    ],
    datasets => [
        {
            args => {expr => '1'},
        },
        {
            args => {expr => '1' . ('*1' x (  2-1)) },
        },
        {
            args => {expr => '1' . ('*1' x (  5-1)) },
        },
        {
            name => '1*1*...*1 (10x)',
            args => {expr => '1' . ('*1' x ( 10-1)) } },
        {
            name => '1*1*...*1 (20x)',
            args => {expr => '1' . ('*1' x ( 20-1)) },
        },
        {
            name => '1*1*...*1 (100x)',
            args => {expr => '1' . ('*1' x (100-1)) },
        },
    ],
};

1;
# ABSTRACT:

=head1 SEE ALSO
