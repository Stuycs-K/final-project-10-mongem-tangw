PImage createImage(PImage canvas){
  loadPixels();
  for(int i = 0; i < input.length(); i++){
    Color randomColor = (random(255), random(255), random(255));
    canvas.pixels[i] = randomColor;
  }
  updatePixels();
  return fromStringToPicture(canvas);
}
