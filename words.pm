#!/usr/bin/perl

package words;

sub construct
{
    my $class = shift;
    my $self = {
        _location=>shift,
        @wordArray=()
    };
    open($WordFile,"<",$self->{_location});
    $wordLength=0;
    while ($word = <$WordFile>)
    {
        chomp $word;
        push (@wordArray,$word);
        $wordLength++;
    }
    bless $self, $class;
    return $self;
}
sub print
{
    print @wordArray;
}
sub random
{
    $randIndex= int(rand($wordLength));
    return uc $wordArray[$randIndex]; 
}
1;