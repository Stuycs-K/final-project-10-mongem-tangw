String putKeyInLock(PImage key, PImage lock, int stringLength){
 String keyString = imageToString(key, stringLength);
 println(keyString);
 String result = "";
 String Locked = imageToString(lock, stringLength);
 println(Locked);
 for(int i = 0; i < stringLength; i++){
   println(keyString.charAt(i));
   //String binary = offset( binary(Locked.charAt(i)), 9 - keyString.charAt(i));
  //result+= (char) unbinary(offset( binary(Locked.charAt(i)), 9 - keyString.charAt(i)));
 }
 return result;
}
