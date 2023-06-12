Boolean typed = false;
Boolean imageSelected = false;



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

void fileSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    println("User selected " + selection.getAbsolutePath());
  }
}


// Called in main
void toDecrypt() {
  if (first) {
    textSize(40);
    background(loadImage("matrix.png"));
    fill(0);
    stroke(0, 143, 17);
    rect(128, 95, 280, 45);
    fill(0, 143, 17);
    text("Uploaded Photo", 128, height/8);
    PImage output = loadImage("output.png");
    image(output, 0, height/4);
    textSize(40);
    fill(0);
    stroke(0, 143, 17);
    rect(width/6, 800, 700, 150);
    // Second rectangle
    rect(40, 800, 100, 70);
    fill(0, 143, 17);
    text("Please press enter to get decrypted", width/5, 840);
    text("message", width/5, 880);
    // Bottom left mode
    textSize(20);
    text("Mode:", 45, 830);
    text("Decryption", 45, 850);
    // Back button
    fill(0);
    stroke(0, 143, 17);
    rect(40, 880, 100, 70);
    fill(0, 143, 17);
    text("Back to", 50, 910);
    text("modes", 50, 930);
    // Pop up select output feature
    selectInput("Replace the output.png file in the data folder with the one in main!", "fileSelected");
    println("Replace the output.png file in the data folder with the one in main!");
    // Keep clean
    first = false;
  }
  // When click on back button
  if ((mouseX >= 40 && mouseX <= 140) && (mouseY >= 880 && mouseY <= 950)) {
    MODE = CHOOSE;
    first = true;
    typed=false;
    mouseClicked();
  }
}
