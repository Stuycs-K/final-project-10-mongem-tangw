
PImage source;
String input = "";
Boolean typed = false;




String lastNineRGB(PImage source, int position){
  String result = "";
  for(int i = 0; i < 3; i++){
    int red = (int) red(pixels[position+i]);
    int green = (int) green(pixels[position+i]);
    int blue = (int) blue(pixels[position+i]);
     result+=binary((int)red).substring(binary(red).length()-1, binary(red).length());
     result+=binary((int)green).substring(binary(green).length()-1, binary(green).length());
     result+=binary((int)blue).substring(binary(blue).length()-1, binary(blue).length());
     
  }
  return result;
}

void fromStringToPicture(){
  
  // Update source
}
