#!/usr/bin/perl
use FindBin qw( $RealBin );
use lib $RealBin;
use words;
use player;
use board;
package HangManGame;

sub construct
{
    my $class=shift;
    my $self = {
        _PlayerName=>shift,
        _FileLocation=>shift
    };
    $Player = construct player($self->{_PlayerName});
    $myBoard = construct board();
    $wordList = construct words($self->{_FileLocation});
    bless $self, $class;
    return $self;
}

sub begin
{
    my $status=0;
    my $word = $wordList->random();
    my @guessed=();
    my @wrongGuesses=();
    my @ExpectedWord=();
    my $wordLength=length($word);
    foreach $i (split('',$word))
    {
        push(@guessed,"_");
        push(@ExpectedWord,$i);
    }
    while (1)
    {
        print "The Word to Guess: ";
        print join('',@guessed);
        print "\n";
        print "Wrong Guesses so far: @wrongGuesses\n";
        print "Life: ";
        print 6-$status;
        print "\n";
        $myBoard->DrawHangman($status);
        print "Make a Guess: \n";
        $PlayerGuess = $Player->MakeGuess();
        for $char (split('',$PlayerGuess))
        {
            $contains=0;
            
            for ($i=0;$i<= $wordLength;$i++)
                {
                    
                    if ($ExpectedWord[$i] eq $char)
                    {
                        $contains=1;
                    }
                }
            if ($contains)
            {
                for ($i=0;$i<= $wordLength;$i++)
                {
                    if ($ExpectedWord[$i] eq $char && $guessed[$i] eq "_")
                    {
                        @guessed[$i]=$char;
                    }
                }
            }
            else
            {
                $contains=0;
                for $i (@wrongGuesses)
                {
                    if ($i eq $char)
                    {
                        $contains=1;
                    }
                }
                if ($contains==0)
                {
                    push(@wrongGuesses,$char);
                    print "Wrong Guess: $char\n";
                    $status++;
                }
            }
        }
        if ($status>=6)
        {
            $win=0;
            last;
        }
        else
        {
            $equal=1;
            
            for ($i=0;$i<= $wordLength;$i++)
                {
                    
                    if ($ExpectedWord[$i] ne $guessed[$i])
                    {
                        $equal=0;
                    }
                }
            if ($equal)
            {
                $win=1;
                last;
            }
        }
    }
    if ($win)
    {
        print "You guessed it correctly! It was ";
        print join('',@ExpectedWord);
        print "\n";
        $myBoard->FreeHangMan();
    }
    else
    {
        $myBoard->DrawHangman($status);
        print "You lose. The correct word was ";
        print join('',@ExpectedWord);
        print "\n";
    }

}
1;