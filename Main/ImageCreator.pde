PImage creatorImage(PImage canvas) {
  loadPixels();
  for (int i = 0; i < canvas.width*canvas.height; i++) {
    color randomColor = color(random(255), random(255), random(255));
    canvas.pixels[i] = randomColor;
  }
  updatePixels();
  return fromStringToPicture(canvas, input);
}

// Called in main
void toCreate() {
  if (first) {
    textSize(40);
    background(loadImage("matrix.png"));
    fill(0);
    stroke(0, 143, 17);
    rect(128, 95, 280, 45);
    fill(0, 143, 17);
    text("New Photo", 128, height/8);
    PImage newImage = createImage(512, 512, RGB);
    image(newImage, 0, height/4);
    textSize(40);
    fill(0);
    stroke(0, 143, 17);
    rect(width/6, 800, 700, 150);
    // Second rectangle
    rect(40, 800, 100, 70);
    fill(0, 143, 17);
    text("Please type what you wish to encrypt.", width/5, 840);
    text("What you encrypt will be shown", width/5, 880);
    text("on the right. Press enter when done!", width/5, 920);
    // Bottom left mode
    textSize(20);
    text("Mode:", 45, 830);
    text("Creator", 45, 850);
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
