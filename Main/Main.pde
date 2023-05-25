int ENCRYPTER = 0;
int DECRYPTER = 1;
int MODE = 0;

void setup(){
  size(1000,1000);
  PImage source = loadImage("source.png");
  PImage output = loadImage("output.png");
  //println(binary(42, 9));
  //println(unbinary("000101010"));
   image(source,0,0);

   textSize(25);
   fill(100,100,100);
   text("Original Photo", 0, 20);
   //image(source,500,0);
   //println(char(unbinary(lastNineRGB(source, 0))));
   
 

}

void mouseClicked(){
 MODE+=1;
 if(MODE==2)
 MODE=0;
}

void keyPressed(){
  // This ends the message once ENTER is hit
  if (!typed){
    if (key != ENTER){
      input += key;
    }
  }
  // DO something with the String after enter
  if (key == ENTER){
    typed = true;
    println(input);
    
  }
}


void draw(){
  if(keyPressed && key == ENTER){
    println(MODE);
    if(MODE == ENCRYPTER){
      fromStringToPicture(loadImage("source.png"));
    }
    if(MODE == DECRYPTER){
      println(imageToString(loadImage("output.png"), 50));
    }
    println("---------");
  }

}
