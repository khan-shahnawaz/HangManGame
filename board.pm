#!/usr/bin/perl

package board;

sub construct
{
    my $class=shift;
    my $self = {};
    bless $self, $class;
    return $self;
}

sub DrawHangman
{
    my $status = $_[1];
    print "     __________\n";
    for ($line=1;$line<6;$line++)
    {
        print "    ";
        print "|";
        if ($line==1)
        {
            if ($status>=1)
            {
                print "          |";
            }
            else
            {
                print "          ";
            }
            print "\n";
        }
        if ($line==2)
        {
            if ($status>=1)
            {
                print "          O";
            }
            else
            {
                print "           ";
            }
            print "\n";
        }
        if ($line==3)
        {
            print "         ";
            if ($status>=3)
            {
                print '\\' ;
            }
            else
            {
                print " ";
            }
            if ($status>=2)
            {
                print '|' ;
            }
            else
            {
                print " ";
            }
            if ($status>=4)
            {
                print '/' ;
            }
            else
            {
                print " ";
            }
            print "\n";
        }
        if ($line==4)
        {
            if ($status>=2)
            {
                print "          |";
            }
            else
            {
                print "          ";
            }
            print "\n";
        }
        if ($line==5)
        {
            print "         ";
            if ($status>=5)
            {
                print '/' ;
            }
            else
            {
                print " ";
            }
            print " ";
            if ($status>=6)
            {
                print '\\' ;
            }
            else
            {
                print " ";
            }
            print "\n";
        }
    }
    print "    |\n";
    print "____|____\n";
}
sub FreeHangMan
{
    my $status=10;
    print "     __________\n";
    print "    |          \n";
    print "    |          \n";
    for ($line=1;$line<6;$line++)
    {
        if ($line==1)
        {
            print "    ";
            print "|";
            if ($status>=1)
            {
                print "           ";
            }
            else
            {
                print "          ";
            }
            print "\n";
        }
        if ($line==2)
        {
            print "    ";
            print "|";
            if ($status>=1)
            {
                print "          O";
            }
            else
            {
                print "           ";
            }
            print "\n";
        }
        if ($line==3)
        {
            print "    ";
            print "|";
            print "         ";
            if ($status>=3)
            {
                print '\\' ;
            }
            else
            {
                print " ";
            }
            if ($status>=2)
            {
                print '|' ;
            }
            else
            {
                print " ";
            }
            if ($status>=4)
            {
                print '/' ;
            }
            else
            {
                print " ";
            }
            print "\n";
        }
        if ($line==4)
        {
            print "    ";
            print "|";
            if ($status>=2)
            {
                print "          |";
            }
            else
            {
                print "          ";
            }
            print "\n";
        }
        if ($line==5)
        {
            print "____";
            print "|";
            print "____     ";
            if ($status>=5)
            {
                print '/' ;
            }
            else
            {
                print " ";
            }
            print " ";
            if ($status>=6)
            {
                print '\\' ;
            }
            else
            {
                print " ";
            }
            print "\n";
        }
    }
}
1;