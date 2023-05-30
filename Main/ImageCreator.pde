PImage createImage(PImage canvas){
  loadPixels();
  for(int i = 0; i < input.length(); i++){
    color randomColor = color(random(255), random(255), random(255));
    canvas.pixels[i] = randomColor;
  }
  updatePixels();
  return fromStringToPicture(canvas);
}
