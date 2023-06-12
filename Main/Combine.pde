String putKeyInLock(PImage key, PImage lock, int stringLength) {
  String keyString = imageToString(key, stringLength);
  //println(keyString);
  String result = "";
  String Locked = imageToString(lock, stringLength);
  //println(Locked);
  //println(keyString.charAt(0)+"how");
  for (int i = 0; i < stringLength; i++) {
    if (Character.isDigit(keyString.charAt(i))) {
      String currentChar = binary(Locked.charAt(i), 9);
      //println(currentChar);
      //println(i+"");
      //println(keyString.charAt(i));
      String currentKey = ""+keyString.charAt(i);
      //println(currentKey+"how");
      String binary = offset( currentChar, 9 - Integer.parseInt(currentKey));
      //println(binary);
      result+= (char) unbinary(binary);
    }
  }
  println("The result is: "+result);
  return result;
}

void toCombine() {
  if (first) {
    textSize(40);
    background(loadImage("matrix.png"));
    fill(0);
    stroke(0, 143, 17);
    rect(128, 95, 280, 45);
    fill(0, 143, 17);
    text("Uploaded Lock", 128, height/8);
    PImage locked = loadImage("lock.png");
    image(locked, 0, height/4);
    fill(0);
    stroke(0, 143, 17);
    rect(640, 95, 280, 45);
    fill(0, 143, 17);
    text("Uploaded key", 640, height/8);
    PImage key = loadImage("key.png");
    image(key, 512, height/4);
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
    text("Key", 45, 850);
    // Back button
    fill(0);
    stroke(0, 143, 17);
    rect(40, 880, 100, 70);
    fill(0, 143, 17);
    text("Back to", 50, 910);
    text("modes", 50, 930);
    // Pop up select output feature
    // Pop up select output feature
    selectInput("Replace the lock.png and key.png files in the data folder with the ones in main!", "fileSelected");
    println("Replace the lock.png and key.png files in the data folder with the ones in main!");
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
