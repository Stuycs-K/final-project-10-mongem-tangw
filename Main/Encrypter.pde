 
  void changeNineRGB(PImage source, int position, char input){
    loadPixels();
      String charBinary = binary(input, 9);
      //println(charBinary);
      for(int i = 0; i < 3; i++){
          //println("BEFORE: "+(int)red(pixels[position+i]));
          String binaryRed = binary((int)red(pixels[position+i]));
          String binaryGreen = binary((int)green(pixels[position+i]));
          String binaryBlue = binary((int)blue(pixels[position+i]));
          println("ORIGINAL");
          println(binaryRed);
          println(binaryGreen);
          println(binaryBlue);
          //println(binaryRed.substring(0,binaryRed.length()-1));
          binaryRed = binaryRed.substring(0,binaryRed.length()-1) + charBinary.substring(3*i, 3*i+1);
          //println(binaryRed);
          binaryGreen = binaryGreen.substring(0,binaryGreen.length()-1) + charBinary.substring(3*i+1, 3*i+2);
          binaryBlue = binaryBlue.substring(0,binaryBlue.length()-1) + charBinary.substring(3*i+2, 3*i+3);
          //println("AFTER: " + unbinary(binaryRed));
          pixels[position+i] = color(unbinary(binaryRed), unbinary(binaryGreen), unbinary(binaryBlue));
          binaryRed = binary((int)red(pixels[position+i]));
          binaryGreen = binary((int)green(pixels[position+i]));
          binaryBlue = binary((int)blue(pixels[position+i]));
          println("ALTERED");
          println(binaryRed);
          println(binaryGreen);
          println(binaryBlue);
      }    
  }
  
  void fromStringToPicture(PImage source){
    int stop = input.length();
    int j=0;
    for (int i=0; i<stop; i+=3){
      changeNineRGB(source, i, input.charAt(j));
      j++;
    }
    PImage output = createImage(source.width, source.height, RGB);
    output = source.get();
    output.save("output.png");
  }
