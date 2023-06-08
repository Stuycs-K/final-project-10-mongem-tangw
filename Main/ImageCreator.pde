PImage createImage(PImage canvas) {
  loadPixels();
  for (int i = 0; i < input.length(); i++) {
    color randomColor = color(random(255), random(255), random(255));
    canvas.pixels[i] = randomColor;
  }
  updatePixels();
  return fromStringToPicture(canvas);
}

// Called in main
void toCreate() {
  fill(48, 165, 184);
  rect(128, 95, 280, 45);
  fill(100, 100, 100);
  text("New Photo", 128, height/8);
  PImage newImage = createImage(512, 512, RGB);
  image(newImage, 0, height/4);
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
  text("Creator", 45, 860);
  textSize(40);
}
