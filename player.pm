#!/usr/bin/perl

package player;

sub construct
{
    my $class=shift;
    my $self = {
        _name=>shift
    };
    bless $self, $class;
    return $self;
}

sub MakeGuess
{
    $guess= <STDIN>;
    chomp $guess;
    return uc $guess;
}
1;