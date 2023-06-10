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
  println(result);
  return result;
}
