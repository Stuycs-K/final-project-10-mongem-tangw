void chooseMode() {
  background(100);
  // Title that says "CHOOSE YOUR MODE"
  fill(255);
  rect(width/4, 200, 512, 200);
  fill(50, 50, 100);
  textSize(80);
  text("CHOOSE YOUR", 265, 285);
  text("MODE", 400, 375);

  // Button for ENCRYPTER
  fill(255);
  rect(20, 500, 181, 100);
  fill(50, 50, 100);
  textSize(50);
  text("Encrypter", 30, 570);

  // Button for DECRYPTER
  fill(255);
  rect(221, 500, 181, 100);
  fill(50, 50, 100);
  textSize(50);
  text("Decrypter", 231, 570);


  // Button for CREATOR
  fill(255);
  rect(422, 500, 181, 100);
  fill(50, 50, 100);
  textSize(50);
  text("Creator", 432, 570);


  // Button for LOCK 
  fill(255);
  rect(623, 500, 181, 100);
  fill(50, 50, 100);
  textSize(50);
  text("Lock", 633, 570);
  
  // Button for KEY
  fill(255);
  rect(824, 500, 181, 100);
  fill(50, 50, 100);
  textSize(50);
  text("Key", 834, 570);

  //----------Clicking on the button---------------
  // Y-coordinates for the mouse is the same range for all the buttons
  if (mouseY >= 500 && mouseY <= 600 && MODE == CHOOSE && menu) {
    // Encrypter mode
    if (mouseX >= 20 && mouseX <= 201) {
      MODE = ENCRYPTER;
      background(100);
    }
    // Decrypter mode
    else if (mouseX >= 221 && mouseX <= 402) {
      MODE = DECRYPTER;
      background(100);
    }
    // Creator mode
    else if (mouseX >= 422 && mouseX <= 603) {
      MODE = CREATOR;
      background(100);
    }
    // Lock & Key mode
    else if (mouseX >= 623 && mouseX <= 804) {
      MODE = SPLIT;
      background(100);
    }
    //FOR LATER
    else if (mouseX >= 824 && mouseX <= 1005) {
      MODE = COMBINE;
      background(100);
    }
  }
}
