#!/usr/bin/perl
use IO::Socket;
system('cls');
print qq(
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
/_______________________/_/
                    
                    Note : (CRTL + C) = Exit);
print "\n\n";
$| = 1;
print qq(
Enter List of Target Or IP :
> );
$targets=<STDIN>;
chomp($targets);
open (TARGETFILE, "<$targets") || die "[-] Can't Found ($targets) !";
@TARGETS = <TARGETFILE>;
close TARGETFILE;
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
foreach $target (@TARGETS) {
chomp $target;
	foreach ($port = $start ; $port <= $end ; $port++) 
	{
		print "Scanning $target (port $port)\n";
		$socket = IO::Socket::INET->new(PeerAddr => $target , PeerPort => $port , Proto => 'tcp' , Timeout => 1);
		if( $socket )
		{
			print "Host: $target | Port : $port is opened \n" ;
		}else{}
	}
}
