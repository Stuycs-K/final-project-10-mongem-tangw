
void changeNineRGB(PImage source, int position, char input) {
  loadPixels();
  String charBinary = binary(input, 9);
  //println(charBinary);
  for (int i = 0; i < 3; i++) {
    String binaryRed = binary((int)red(source.pixels[position+i]));
    String binaryGreen = binary((int)green(source.pixels[position+i]));
    String binaryBlue = binary((int)blue(source.pixels[position+i]));
    //println("ORIGINAL");
    //println(binaryRed + " " + i);
    //println(binaryGreen + " " + i);
    //println(binaryBlue + " " + i);
    binaryRed = binaryRed.substring(0, binaryRed.length()-1) + charBinary.substring(3*i, 3*i+1);
    binaryGreen = binaryGreen.substring(0, binaryGreen.length()-1) + charBinary.substring(3*i+1, 3*i+2);
    binaryBlue = binaryBlue.substring(0, binaryBlue.length()-1) + charBinary.substring(3*i+2, 3*i+3);
    color hidden = color(unbinary(binaryRed), unbinary(binaryGreen), unbinary(binaryBlue));
    //color hidden = color(0,0,0);
    source.pixels[position+i] = hidden;
    //binaryRed = binary((int)red(source.pixels[position+i]));
    //binaryGreen = binary((int)green(source.pixels[position+i]));
    //binaryBlue = binary((int)blue(source.pixels[position+i]));
    //println("ALTERED");
    //println(binaryRed + " " + i);
    //println(binaryGreen + " " + i);
    //println(binaryBlue + " " + i);
    updatePixels();
  }
  //println("end");
}

PImage fromStringToPicture(PImage source) {
  int stop = 3*input.length();
  int j=0;
  for (int i=0; i<stop; i+=3) {
    changeNineRGB(source, i, input.charAt(j));
    j++;
  }
  PImage output = createImage(source.width, source.height, RGB);
  output = source.get();
  output.save("output.png");
  return output;
}

// Called in main
void toEncrypt() {
  fill(48, 165, 184);
  rect(128, 95, 280, 45);
  fill(100, 100, 100);
  text("Original Photo", 128, height/8);
  PImage source = loadImage("source.png");
  image(source, 0, height/4);
  textSize(40);
  fill(48, 165, 184);
  rect(width/6, 800, 700, 150);
  rect(40, 800, 100, 150);
  fill(0, 0, 0);
  text("Please type what you wish to encrypt.", width/5, 840);
  text("What you encrypt will be shown", width/5, 880);
  text("on the right. Press enter when done!", width/5, 920);
  textSize(20);
  text("Mode:", 45, 840);
  text("Encryption", 45, 860);
  textSize(40);
}
