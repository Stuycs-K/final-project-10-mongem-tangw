void Lock(PImage source) {
  String offset = "";
  int[] key = new int[input.length()];
  for (int i = 0; i < input.length(); i++) {
    int tempKey = (int)(Math.random() * 9);
    key[i] = tempKey;
    char current = input.charAt(i);
    String currentBinary = binary(current, 9);
    currentBinary = offset(currentBinary, tempKey);
    current = (char) unbinary(currentBinary);
    offset += current;
  }
  println(offset);
  fromStringToPicture(source, offset).save("locked.png");
  String lock = "";
  for (int i = 0; i < key.length; i++) {
    lock += key[i];
  }
  println(lock);
  fromStringToPicture(source, lock).save("key.png");
}

String offset(String x, int offset) {
  return x.substring(offset)+ x.substring(0, offset);
}

void toSplit() {
  if (first) {
    textSize(40);
    background(loadImage("matrix.png"));
    fill(0);
    stroke(0, 143, 17);
    rect(128, 95, 280, 45);
    fill(0, 143, 17);
    text("Original Photo", 128, height/8);
    PImage source = loadImage("source.png");
    image(source, 0, height/4);
    textSize(40);
    fill(0);
    stroke(0, 143, 17);
    rect(width/6, 800, 700, 150);
    // Second rectangle
    rect(40, 800, 100, 70);
    fill(0, 143, 17);
    text("Please type what you wish to lock.", width/5, 840);
    text("A lock and a key will be shown on the", width/5, 880);
    text("left + right. Press enter when done!", width/5, 920);
    // Bottom left mode
    textSize(20);
    text("Mode:", 45, 830);
    text("Lock", 45, 850);
    // Back button
    fill(0);
    stroke(0, 143, 17);
    rect(40, 880, 100, 70);
    fill(0, 143, 17);
    text("Back to", 50, 910);
    text("modes", 50, 930);
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
