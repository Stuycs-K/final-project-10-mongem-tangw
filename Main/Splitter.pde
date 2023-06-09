void Lock(PImage source){
  String offset = "";
  int[] key = new int[input.length()];
  for(int i = 0; i < input.length(); i++){
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
  for(int i = 0; i < key.length; i++){
    lock += key[i];
  }
  println(lock);
  fromStringToPicture(source, lock).save("key.png");
}

String offset(String x, int offset){
  return x.substring(offset)+ x.substring(0,offset);
}
