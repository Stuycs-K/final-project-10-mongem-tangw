
String input = "";
Boolean typed = false;



String lastNineRGB(PImage source, int position) {
  loadPixels();
  String result = "";
  for (int i = 0; i < 3; i++) {
    int red = (int) red(source.pixels[position+i]);
    int green = (int) green(source.pixels[position+i]);
    int blue = (int) blue(source.pixels[position+i]);
    result+=binary((int)red).substring(binary(red).length()-1, binary(red).length());
    result+=binary((int)green).substring(binary(green).length()-1, binary(green).length());
    result+=binary((int)blue).substring(binary(blue).length()-1, binary(blue).length());
  }
  return result;
}
String imageToString(PImage output, int stringLength) {
  String result = "";
  for (int i = 0; i < stringLength*3; i+=3) {
    result+=(char)unbinary(lastNineRGB(output, i));
  }
  return result;
}

// Called in main
void toDecrypt() {
  textSize(40);
  background(100);
  fill(48, 165, 184);
  rect(128, 95, 280, 45);
  fill(100, 100, 100);
  text("Uploaded Photo", 128, height/8);
  PImage output = loadImage("output.png");
  image(output, 0, height/4);
  textSize(40);
  fill(48, 165, 184);
  rect(width/6, 800, 700, 150);
  // Second rectangle
  rect(40, 800, 100, 70);
  fill(0, 0, 0);
  text("Please press enter to get decrypted", width/5, 840);
  text("message", width/5, 880);
  // Bottom left mode
  textSize(20);
  text("Mode:", 45, 830);
  text("Decryption", 45, 850);
  // Back button
  fill(48, 165, 184);
  rect(40, 880, 100, 70);
  fill(0, 0, 0);
  text("Back to", 50, 910);
  text("modes", 50, 930);
  // When click on back button
  if ((mouseX >= 40 && mouseX <= 140) && (mouseY >= 880 && mouseY <= 950)) {
    MODE = CHOOSE;
    mouseClicked();
  }
}
