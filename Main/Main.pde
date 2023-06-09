int ENCRYPTER = 0;
int DECRYPTER = 1;
int CREATOR = 2;
int SPLIT = 3;
int MODE = 0;
int DECRYPTLENGTH = 50;
Boolean clicked = false;

void setup(){
  size(1024,1024);
  textSize(40);
  fill(100,100,100);
  text("Please click mouse button", width/4, 900);
  //println(offset("abcdef", 1));
  //println( offset(  offset("abcdef", 1), 5)   );
  println(imageToString(loadImage("key.png"), 20));
  println(imageToString(loadImage("locked.png"), 20));
  putKeyInLock(loadImage("key.png"),loadImage("locked.png"),20);
}

void mouseClicked(){
  println(clicked);
  if(!clicked){
    clicked = true;
  }
  else{
 MODE+=1;
 if(MODE==4)
 MODE=0;
  }
   println(MODE + "");
   if(MODE==ENCRYPTER){
      fill(48, 165, 184);
      rect(128, 95, 280, 45);
      fill(100,100,100);
     text("Original Photo", 128, height/8);
    PImage source = loadImage("source.png");
    image(source,0,height/4);
    textSize(40);
    fill(48, 165, 184);
    rect(width/6, 800, 700, 150);
    rect(40,800,100,150);
    fill(0,0,0);
    text("Please type what you wish to encrypt.", width/5, 840);
    text("What you encrypt will be shown", width/5, 880);
    text("on the right. Press enter when done!", width/5, 920);
    textSize(20);
    text("Mode:", 45, 840);
    text("Encryption", 45, 860);
    textSize(40);
    }
    if(MODE==DECRYPTER){
      fill(48, 165, 184);
      rect(128, 95, 280, 45);
      fill(100,100,100);
     text("Uploaded Photo", 128, height/8);
    PImage output = loadImage("output.png");
    image(output,0,height/4);
    textSize(40);
    fill(48, 165, 184);
    rect(width/6, 800, 700, 150);
    rect(40,800,100,150);
    fill(0,0,0);
    text("Please press enter to get decrypted", width/5, 840);
    text("message", width/5, 880);
    textSize(20);
    text("Mode:", 45, 840);
    text("Decryption", 45, 860);
    textSize(40);
    }
    if(MODE==CREATOR){
     fill(48,165,184);
     rect(128,95,280,45);
     fill(100,100,100);
     text("New Photo", 128, height/8);
     PImage newImage = createImage(512,512,RGB);
     image(newImage,0,height/4);
     textSize(40);
     fill(48,165,184);
     rect(width/6, 800, 700, 150);
     rect(40,800,100,150);
     fill(0,0,0);
     text("Please type what you wish to encrypt.", width/5, 840);
    text("What you encrypt will be shown", width/5, 880);
    text("on the right. Press enter when done!", width/5, 920);
     textSize(20);
     text("Mode:", 45, 840); 
     text("Creator", 45, 860);
     textSize(40);
    }
    if(MODE == SPLIT){
        println("splitter!!!");
       
        
    }
}

void keyPressed(){
  if(MODE==ENCRYPTER || MODE==CREATOR || MODE==SPLIT){
  // This ends the message once ENTER is hit
  if (!typed){
    if (key != ENTER){
      input += key;
      textSize(20);
      fill(48,165,194);
      rect(512, height/4, 512,512);
      fill(0,0,0);
      if(input.length()>33){
      text(input.substring(0, 33), 530, (height/4)+20); 
      int limit = (input.length() % 33);
      for(int i = 1; i < input.length()/33; i++){
       text(input.substring(33*i, (33*i)+33), 530, (height/4)+(20*i)+20); 
      }
      text(input.substring(input.length()-limit, input.length()),530,(height/4)+(input.length()/33)*(20)+20);
      }
      else{
       text(input, 530, (height/4)+20); 
      }
    }
  }
  // DO something with the String after enter
  if (key == ENTER){
    typed = true;
    //println(input);
  }
  }
}


void draw(){
  
  if(keyPressed && key == ENTER){
    println(clicked);
    println("-");
    if(clicked == false){
     return;
    }
    else{
    
    if(MODE == ENCRYPTER){
      println("encrypt");
      PImage editedEncrypted = fromStringToPicture(loadImage("source.png"), input);
      image(editedEncrypted, 512, height/4);
      editedEncrypted.save("output.png");
      textSize(40);
     fill(100,100,100);
     text("Encrypted Photo", 640, height/8);
     text("Saved as \"output.png\"", 640, height/8+40);
     text("in your processing files", 640, height/8+80);
    }
    if(MODE == DECRYPTER){
      println("decrypt");
      String result = imageToString(loadImage("output.png"), DECRYPTLENGTH);
      textSize(20);
      fill(48,165,194);
      rect(512, height/4, 512,512);
      fill(0,0,0);
      if(result.length()>33){
      text(result.substring(0, 33), 530, (height/4)+20); 
      int limit = (result.length() % 33);
      for(int i = 1; i < result.length()/33; i++){
       text(result.substring(33*i, (33*i)+33), 530, (height/4)+(20*i)+20); 
      }
      text(result.substring(result.length()-limit, result.length()),530,(height/4)+(result.length()/33)*(20)+20);
      }
      else{
       text(result, 530, (height/4)+20); 
      }
    }

    if(MODE==CREATOR){
     println("creator"); 
     PImage canvas = createImage(512,512,RGB);
     image(creatorImage(canvas), 512, height/4);
     textSize(40);
     fill(100,100,100);
     canvas.save("output.png");
     text("Encrypted Photo", 640, height/8);
     text("Saved as \"output.png\"", 640, height/8+40);
     text("in your processing files", 640, height/8+80);
     
    }
    if(MODE==SPLIT){
     PImage source = loadImage("source.png");
        Lock(source); 
    }
    
  } //this one
  

  }

}
