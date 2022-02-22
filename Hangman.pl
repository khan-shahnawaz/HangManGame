#!/usr/bin/perl
use FindBin qw( $RealBin );
use lib $RealBin;
use HangManGame;
$playAgain='Y';
while ($playAgain eq 'Y')
{
    print "Welcome to the hangman game. When asked, type the word/character and press enter\n\n";
    $newGame= construct HangManGame("Player","words.txt"); #starting new game
    $newGame->begin();
    print "Wanna play again? [y/n]: ";
    $playAgain = <STDIN>;
    chomp $playAgain; #capitalising the choice to remove case sensitivity
    $playAgain = uc $playAgain;
}