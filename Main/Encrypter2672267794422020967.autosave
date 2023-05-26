 
  void changeNineRGB(PImage source, int position, char input){
    loadPixels();
      String charBinary = binary(input, 9);
      //println(charBinary);
      for(int i = 0; i < 3; i++){
          String binaryRed = binary((int)red(source.pixels[position+i]));
          String binaryGreen = binary((int)green(source.pixels[position+i]));
          String binaryBlue = binary((int)blue(source.pixels[position+i]));
          println("ORIGINAL");
          println(binaryRed + " " + i);
          println(binaryGreen + " " + i);
          println(binaryBlue + " " + i);
          binaryRed = binaryRed.substring(0,binaryRed.length()-1) + charBinary.substring(3*i, 3*i+1);
          binaryGreen = binaryGreen.substring(0,binaryGreen.length()-1) + charBinary.substring(3*i+1, 3*i+2);
          binaryBlue = binaryBlue.substring(0,binaryBlue.length()-1) + charBinary.substring(3*i+2, 3*i+3);
          color hidden = color(unbinary(binaryRed), unbinary(binaryGreen), unbinary(binaryBlue))
          source.pixels[position+i] = hidden;
          binaryRed = binary((int)red(source.pixels[position+i]));
          binaryGreen = binary((int)green(source.pixels[position+i]));
          binaryBlue = binary((int)blue(source.pixels[position+i]));
          println("ALTERED");
          println(binaryRed + " " + i);
          println(binaryGreen + " " + i);
          println(binaryBlue + " " + i);
      }
      println("end");
  }
  
  void fromStringToPicture(PImage source){
    int stop = 3*input.length();
    int j=0;
    for (int i=0; i<stop; i+=3){
      changeNineRGB(source, i, input.charAt(j));
      j++;
    }
    PImage output = createImage(source.width, source.height, RGB);
    output = source.get();
    output.save("output.png");
  }
