void setup(){
  size(1000,1000);
  PImage source = loadImage("source.png");
  //println(binary(42, 9));
  //println(unbinary("000101010"));
   image(source,0,0);
   changeNineRGB(source, 0, 'a');
   image(source,500,0);
}

void draw(){

}
