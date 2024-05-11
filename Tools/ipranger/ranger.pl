#!/usr/bin/perl
use Digest::MD5 qw(md5 md5_hex md5_base64);
use IO::Select;
use HTTP::Response;
use HTTP::Request::Common qw(GET);
use URI::URL;
use IO::Socket::INET;
use Term::ANSIColor qw(:constants);
use MIME::Base64;
use LWP;
use HTTP::Cookies;
use HTML::Entities;
use URI::Escape;
use Win32::Console::ANSI;
use Term::ANSIColor;
use LWP::UserAgent;
use HTTP::Request;
use HTTP::Request::Common qw(POST);
use LWP::UserAgent;
use HTTP::Request::Common;
use Term::ANSIColor;
use HTTP::Request::Common qw(GET);
$ag = LWP::UserAgent->new();
use MIME::Base64;
use WWW::Mechanize;
use threads;
system("title Kasper IP-ranger Null");
if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }    print color('reset');
print color('red');
$logo="



                                                                                                                  
                                                                                                                  
KKKKKKKKK    KKKKKKK                                                                                              
K:::::::K    K:::::K                                                                                              
K:::::::K    K:::::K                                                                                              
K:::::::K   K::::::K                                                                                              
KK::::::K  K:::::KKK  aaaaaaaaaaaaa      ssssssssss   ppppp   ppppppppp       eeeeeeeeeeee    rrrrr   rrrrrrrrr   
  K:::::K K:::::K     a::::::::::::a   ss::::::::::s  p::::ppp:::::::::p    ee::::::::::::ee  r::::rrr:::::::::r  
  K::::::K:::::K      aaaaaaaaa:::::ass:::::::::::::s p:::::::::::::::::p  e::::::eeeee:::::eer:::::::::::::::::r 
  K:::::::::::K                a::::as::::::ssss:::::spp::::::ppppp::::::pe::::::e     e:::::err::::::rrrrr::::::r
  K:::::::::::K         aaaaaaa:::::a s:::::s  ssssss  p:::::p     p:::::pe:::::::eeeee::::::e r:::::r     r:::::r
  K::::::K:::::K      aa::::::::::::a   s::::::s       p:::::p     p:::::pe:::::::::::::::::e  r:::::r     rrrrrrr
  K:::::K K:::::K    a::::aaaa::::::a      s::::::s    p:::::p     p:::::pe::::::eeeeeeeeeee   r:::::r            
KK::::::K  K:::::KKKa::::a    a:::::assssss   s:::::s  p:::::p    p::::::pe:::::::e            r:::::r            
K:::::::K   K::::::Ka::::a    a:::::as:::::ssss::::::s p:::::ppppp:::::::pe::::::::e           r:::::r            
K:::::::K    K:::::Ka:::::aaaa::::::as::::::::::::::s  p::::::::::::::::p  e::::::::eeeeeeee   r:::::r            
K:::::::K    K:::::K a::::::::::aa:::as:::::::::::ss   p::::::::::::::pp    ee:::::::::::::e   r:::::r            
KKKKKKKKK    KKKKKKK  aaaaaaaaaa  aaaa sssssssssss     p::::::pppppppp        eeeeeeeeeeeeee   rrrrrrr            
                                                       p:::::p                                                    
                                                       p:::::p                                                    
                                                      p:::::::p                                                   
                                                      p:::::::p                                                   
                                                      p:::::::p                                                   
                                                      ppppppppp    Note: Not made by me :)                                               
                                                                                                                  
     
";
print $logo;
print "\n";
print colored ("                          Type: Ip Ranger \n",'green');
print colored ("                          Author: MRRR\n",'cyan');
print color 'reset';
print color("green"), "\n";
print color("green"),"./Select: \n";
print color("green"), "\n";
print color 'reset';
print color("cyan"), "Enter IP List :";
my $list=<STDIN>;
chomp($list);
	open (THETARGET, "<$list") || die "[-] Can't open the List of site file ?!";
@TARGETS = <THETARGET>;
close THETARGET;
$link=$#TARGETS + 1;
OUTER: foreach $tofuck(@TARGETS){
chomp($tofuck);
if($tofuck =~ /http:\/\/(.*)\//) {
$tofuck= $1;
gett();
}else{
gett();
}

}


##############################
sub gett(){
$ip= (gethostbyname($tofuck))[4];
my ($a,$b,$c,$d) = unpack('C4',$ip);
for ($i = 1; $i <= 255; $i+=1){
$ips ="$a.$b.$c.$i";
OUTER: foreach $ip($ips){
print color('bold red')," Ping : $ips\n";
        print TEXT "$ips\n";
        close (TEXT);
				open(save, '>>Ips.txt');
    print save "$ips\n";
    close(save);
$dork="ip:$ips";
}
}
}
#############################
sub get(){

$ip= (gethostbyname($tofuck))[4];
my ($a,$b,$c,$d) = unpack('C4',$ip);
$ips="$a.$b.$c.$d";
print color('bold green')," IP : $ips\n";
        print TEXT "$ips\n";
        close (TEXT);
		open(save, '>>kasper-ipranger.txt');
    print save "$ips\n";
    close(save);

$dork="ip:$ips";
}
####################################"