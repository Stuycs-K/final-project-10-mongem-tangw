
PImage source;
String input = "";
Boolean typed = false;


void keyPressed(){
  if (!typed){
    if (key != ENTER){
      input += key;
    }
  }
  // DO something with the String after enter
  if (key == ENTER){
    typed = true;
  //  println(input);
  }
}

void fromStringToPicture(){
  
  // Update source
}
