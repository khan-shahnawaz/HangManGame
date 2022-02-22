The directory consists of 4 perl package module. The package module is called by the main Hangman.pl file
Instructions for running the file:-
    *. Make sure that your terminal is into the same directory where Hangman.pl is present.
    *. Then exectute the command. perl Hangman.pl
    *. Follow the on-screen instructions for playing the game.

Assumptions:-
    *. The list of words is put into the words.txt file. User can edit the words.txt(Keeping the format of words same) to change the words.
    *. The words.txt file is never empty.
    *. It is assumed that the user will enter the characters (a-z and 0-9). The words are automatically capitalised to remove case sensivity.
    *. The user is allowed to guess more than one characters in one attempt. But he will lose life corresponding to the total number of wrong guesses present in the text, even if the a prefix of the entered word matches with the word to be guessed.
    *. If the user enters the same character which was already guessed, then the state of the game will remain same and there will not be any warning given to the user.
    *. The user is asked everytime, if he wants to play again or not. If the user enters any character other than "y" or "Y", then the program will terminate.
    *. There will not be any prompt when user will enter more characters than the number of words in the expecped word. However, the life of be reduced accordingly.
    *. All the words in the txt file should be present on different lines. The program is sensitive to whitespaces but not blank lines. Also, the txt file should not have any Ctrl+M character(Which is placed automatically when words are pasted in Windows system).

Rules:
    *. When the game starts, a word is chosen randomly by the computer. The player is expected to guess the words.
    *. Player will try to guess the word by entering characters and words. If the character is correct, all the occurance of the character in the string will be shown to the player. If the character is not present in the string, the life will be reduced by 1.
    *. There are a total of 6 lifes in the game. At any point of time, then life becomes zero, the game will end and player will lose the game.
    *. When all the cahracters are guessed with positive life, the player will win the game.

