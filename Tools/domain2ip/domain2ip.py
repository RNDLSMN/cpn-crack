import sys,os,re,socket,binascii,time,json,random,threading,Queue,pprint,urlparse,smtplib,telnetlib,os.path,hashlib,string,urllib2,glob,sqlite3,urllib,argparse,marshal,base64,colorama,requests
from colorama import *
from random import choice
from colorama import Fore,Back,init
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from platform import system
from Queue import Queue
from time import strftime
from urlparse import urlparse
from urllib2 import urlopen
colorama.init()


# Now regular ANSI codes should work, even in Windows
CLEAR_SCREEN = '\033[2J'
RED = '\033[31m'   # mode 31 = red forground
RESET = '\033[0m'  # mode 0  = reset
BLUE  = "\033[34m"
CYAN  = "\033[36m"
GREEN = "\033[32m"
RESET = "\033[0m"
BOLD    = "\033[m"
REVERSE = "\033[m"

def logo():
        clear = "\x1b[0m"
        colors = [36, 32, 34, 35, 31, 37  ]

        x = """ 



 /$$   /$$                                                         /$$$$$$$                                    /$$            /$$$$$$  /$$$$$$ /$$$$$$$ 
| $$  /$$/                                                        | $$__  $$                                  |__/           /$$__  $$|_  $$_/| $$__  $$
| $$ /$$/   /$$$$$$   /$$$$$$$  /$$$$$$   /$$$$$$   /$$$$$$       | $$  \ $$  /$$$$$$  /$$$$$$/$$$$   /$$$$$$  /$$ /$$$$$$$ |__/  \ $$  | $$  | $$  \ $$
| $$$$$/   |____  $$ /$$_____/ /$$__  $$ /$$__  $$ /$$__  $$      | $$  | $$ /$$__  $$| $$_  $$_  $$ |____  $$| $$| $$__  $$  /$$$$$$/  | $$  | $$$$$$$/
| $$  $$    /$$$$$$$|  $$$$$$ | $$  \ $$| $$$$$$$$| $$  \__/      | $$  | $$| $$  \ $$| $$ \ $$ \ $$  /$$$$$$$| $$| $$  \ $$ /$$____/   | $$  | $$____/ 
| $$\  $$  /$$__  $$ \____  $$| $$  | $$| $$_____/| $$            | $$  | $$| $$  | $$| $$ | $$ | $$ /$$__  $$| $$| $$  | $$| $$        | $$  | $$      
| $$ \  $$|  $$$$$$$ /$$$$$$$/| $$$$$$$/|  $$$$$$$| $$            | $$$$$$$/|  $$$$$$/| $$ | $$ | $$|  $$$$$$$| $$| $$  | $$| $$$$$$$$ /$$$$$$| $$      
|__/  \__/ \_______/|_______/ | $$____/  \_______/|__/            |_______/  \______/ |__/ |__/ |__/ \_______/|__/|__/  |__/|________/|______/|__/      
                              | $$                                                                                                                      
                              | $$                                                                                                                      
                              |__/                                                                                                                      
                                                                                                  
                                 
				  Note : Domaine List Shoud Be Without http://
                  tool_by_kasper
			                  """
        for N, line in enumerate(x.split("\n")):
            sys.stdout.write("\x1b[1;%dm%s%s\n" % (random.choice(colors), line, clear))
            time.sleep(0.05)
logo()


def getIP(site):
	
		site = i.strip()
		try:
			if 'http://' not in site:
				IP1 = socket.gethostbyname(site)
				print "IP: "+IP1
				open('ips.txt', 'a').write(IP1+'\n')
			elif 'http://' in site:
				url = site.replace('http://', '').replace('https://', '').replace('/', '')
				IP2 = socket.gethostbyname(url)
				print "IP: "+IP2
				open('ips.txt', 'a').write(IP2+'\n')
	
		except:
			pass
			
nam=raw_input('Hey, Mr Kasper enter your Domain List name :')
with open(nam) as f:
    for i in f:
        getIP(i)

		
