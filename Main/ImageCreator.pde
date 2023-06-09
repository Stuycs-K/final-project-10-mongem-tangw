PImage creatorImage(PImage canvas){
  loadPixels();
  for(int i = 0; i < canvas.width*canvas.height; i++){
    color randomColor = color(random(255), random(255), random(255));
    canvas.pixels[i] = randomColor;
  }
  updatePixels();
  return fromStringToPicture(canvas, input);
}
