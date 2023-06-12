void chooseMode() {
  background(loadImage("matrix.png"));

  // Title that says "CHOOSE YOUR MODE"
  fill(0);
  stroke(0, 143, 17);
  rect(width/4, 200, 512, 200);
  fill(0, 143, 17);
  textSize(80);
  text("CHOOSE YOUR", 265, 285);
  text("MODE", 400, 375);

  // Button for ENCRYPTER
  fill(0);
  stroke(0, 143, 17);
  rect(20, 500, 181, 100);
  fill(0, 143, 17);
  textSize(40);
  text("Encrypter", 30, 570);

  // Button for DECRYPTER
  fill(0);
  stroke(0, 143, 17);
  rect(221, 500, 181, 100);
  fill(0, 143, 17);
  textSize(40);
  text("Decrypter", 230, 570);


  // Button for CREATOR
  fill(0);
  stroke(0, 143, 17);
  rect(422, 500, 181, 100);
  fill(0, 143, 17);
  textSize(40);
  text("Creator", 448, 570);


  // Button for LOCK
  fill(0);
  stroke(0, 143, 17);
  rect(623, 500, 181, 100);
  fill(0, 143, 17);
  textSize(40);
  text("Lock", 669, 570);

  // Button for KEY
  fill(0);
  stroke(0, 143, 17);
  rect(824, 500, 181, 100);
  fill(0, 143, 17);
  textSize(40);
  text("Key", 879, 570);

  //----------Clicking on the button---------------
  // Y-coordinates for the mouse is the same range for all the buttons
  if (mouseY >= 500 && mouseY <= 600 && MODE == CHOOSE && menu) {
    // Encrypter mode
    if (mouseX >= 20 && mouseX <= 201) {
      MODE = ENCRYPTER;
      background(loadImage("matrix.png"));
    }
    // Decrypter mode
    else if (mouseX >= 221 && mouseX <= 402) {
      MODE = DECRYPTER;
      background(loadImage("matrix.png"));
    }
    // Creator mode
    else if (mouseX >= 422 && mouseX <= 603) {
      MODE = CREATOR;
      background(loadImage("matrix.png"));
    }
    // Lock & Key mode
    else if (mouseX >= 623 && mouseX <= 804) {
      MODE = SPLIT;
      background(loadImage("matrix.png"));
    }
    //FOR LATER
    else if (mouseX >= 824 && mouseX <= 1005) {
      MODE = COMBINE;
      background(loadImage("matrix.png"));
    }
  }
}
