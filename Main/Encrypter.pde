public class Encrypter{
  void changeNineRGB(PImage source, int position, char input){
      String charBinary = binary(input, 9);
      for(int i = 0; i < 3; i++){
          String binaryRed = binary((int)red(pixels[position+i]));
          String binaryGreen = binary((int)green(pixels[position+i]));
          String binaryBlue = binary((int)blue(pixels[position+i]));
          binaryRed = binaryRed.substring(0,binaryRed.length()-2) + charBinary.substring(3*i, 3*i+1);
          binaryGreen = binaryGreen.substring(0,binaryGreen.length()-2) + charBinary.substring(3*i+1, 3*i+2);
          binaryBlue = binaryBlue.substring(0,binaryBlue.length()-2) + charBinary.substring(3*i+2, 3*i+3);
          
          pixels[position+i] = color(unbinary(binaryRed), unbinary(binaryGreen), unbinary(binaryBlue));
          
      }
  }
}
