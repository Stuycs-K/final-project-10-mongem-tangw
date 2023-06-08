void chooseMode() {
  // Title that says "CHOOSE YOUR MODE"
  fill(255);
  rect(width/4, 200, 512, 200);
  fill(50, 50, 100);
  textSize(80);
  text("CHOOSE YOUR", 265, 285);
  text("MODE", 400, 375);

  // Button for ENCRYPTER
  fill(255);
  rect(20, 500, 230, 100);
  fill(50, 50, 100);
  textSize(50);
  text("Encrypter", 30, 570);

  // Button for DECRYPTER
  fill(255);
  rect(270, 500, 230, 100);
  fill(50, 50, 100);
  textSize(50);
  text("Decrypter", 280, 570);


  // Button for CREATOR
  fill(255);
  rect(520, 500, 230, 100);
  fill(50, 50, 100);
  textSize(50);
  text("Creator", 550, 570);


  // Button for LOCK & KEY
  fill(255);
  rect(770, 500, 234, 100);
  fill(50, 50, 100);
  textSize(50);
  text("Lock & Key", 774, 570);

  //----------Clicking on the button---------------
  // Y-coordinates for the mouse is the same range for all the buttons
  if (mouseY >= 500 && mouseY <= 600) {
    // Encrypter mode
    if (mouseX >= 20 && mouseX <= 250) {
      MODE = ENCRYPTER;
      background(100);
    }
    // Decrypter mode
    else if (mouseX >= 270 && mouseX <= 500) {
      MODE = DECRYPTER;
      background(100);
    }
    // Creator mode
    else if (mouseX >= 520 && mouseX <= 750) {
      MODE = CREATOR;
      background(100);
    }
    // Lock & Key mode
    else if (mouseX >= 770 && mouseX <= 1004) {
      //MODE = LOCK & KEY;
      background(100);
    }
  }
}
