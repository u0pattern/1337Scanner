#!/usr/bin/perl
use IO::Socket;
print "\n
     ___________________________
    !\_________________________/!\
    !!                         !! \
    !!      Port Scanner       !!  \
    !!                         !!  !
    !!    Coder : 1337r00t     !!  !
    !!                         !!  !
    !!  Instagram : 1337r00t   !!  !
    !!                         !!  !
    !!    Twitter: 1337r00t    !!  !
    !!                         !!  !
    !!   We Love Saudi Arabia  !!  /
    !!_________________________!! /
    !/_________________________\!/
       __\_________________/__/!_
      !_______________________!/
    ________________________
   /oooo  oooo  oooo  oooo /!
  /ooooooooooooooooooooooo/ /
 /ooooooooooooooooooooooo/ /
/C=_____________________/_/
                    
                    Note : (CRTL + C) = Exit \n";
print "\n\n";
print "\n\n";
$| = 1;
print qq(
            Enter Target Or IP :
            > );
$target=<STDIN>;
chomp($target);
print qq(
            Enter Start Port :
            > );
$start=<STDIN>;
chomp($start);
print qq(
            Enter End Port :
            > );
$end=<STDIN>;
chomp($end);
foreach ($port = $start ; $port <= $end ; $port++) 
{
    print "\r    Scanning port $port";
    $socket = IO::Socket::INET->new(PeerAddr => $target , PeerPort => $port , Proto => 'tcp' , Timeout => 1);
    if( $socket )
    {
        print "\r    { Port : $port is opened }\n" ;
    }
    else
    {
    }
}
print "\n\nFinished $target\n";
exit (0);
