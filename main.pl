#!/usr/bin/perl

sub getPrimes {
    my @primes;
    my $limit = @_[0];
    my $divisible = 0;
    for ($i = 1; $i < $limit ; $i++) {
        $divisible = 0;
        for ( $j = 1; $j < $limit; $j++) {
            if ( $i % $j == 0) {
                $divisible++;
            }
        }
        if ( $divisible == 2) {
            push(@primes,$i)
        }
    }
    return @primes
}

sub toUpper {
    my $input = @_[0];
    my @res;
    foreach $char (split( // , $input)) {
        push(@res,"\U$char")
    }
    return @res;
}

print join(',', getPrimes(100)) . "\n";
print join('', toUpper("La bella y hermosa moza")) . "\n";
