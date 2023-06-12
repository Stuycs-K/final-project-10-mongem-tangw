import processing.sound.*;
SoundFile music;
int HOME = -1;
int CHOOSE = 0;
int ENCRYPTER = 1;
int DECRYPTER = 2;
int CREATOR = 3;
int SPLIT = 4;
int COMBINE = 5;
int MODE = -1;
int DECRYPTLENGTH = 200;
Boolean clicked = false;
Boolean menu = false;
boolean first = true;

void setup() {
  size(1024, 1024);
  background(loadImage("matrix.png"));
  MODE = HOME;
  // Home page setup
  music = new SoundFile(this, "bondtheme.wav");
  music.loop();
  //music setup

  // Title of project
  fill(0);
  stroke(0, 143, 17);
  rect(200, 200, 600, 200);
  fill(0, 143, 17);
  textSize(100);
  text("Codebreaker", 225, 330);

  // Play button
  fill(0);
  stroke(0, 143, 17);
  rect(200, 450, 275, 100);
  fill(0, 143, 17);
  textSize(50);
  text("Play", 290, 520);

  // Instructions button
  fill(0);
  stroke(0, 143, 17);
  rect(525, 450, 275, 100);
  fill(0, 143, 17);
  textSize(50);
  text("Instructions", 540, 520);
}


//----------------------------------------------------------
void mouseClicked() {
  textSize(40);
  //println("Clicked yet: "+clicked);

  // If the user clicks on the INSTRUCTIONS button
  if (!clicked && (MODE == HOME) && (mouseX >= 525 && mouseX <= 800) &&
    (mouseY >= 450 && mouseY <= 550)) {
    link("https://github.com/Stuycs-K/final-project-10-mongem-tangw/blob/main/README.md");
  }

  // Only start it if user clicks on the PLAY button
  if (!clicked && (MODE == HOME) && (mouseX >= 200 && mouseX <= 475) &&
    (mouseY >= 450 && mouseY <= 550)) {

    clicked = true;
    MODE = CHOOSE;
    //println(menu);
  }

  // Open up the CHOOSE page with the 4 buttons
  if (MODE == CHOOSE) {
    // Cleaned up method by moving implementation to a separate file
    chooseMode();
    menu = true;
    //println(menu);
  }
  println("The mode is: " + MODE);

  // ENCRYPTER MODE
  if (MODE==ENCRYPTER && menu) {
    toEncrypt();
  }

  // DECRYPTER MODE
  if (MODE==DECRYPTER && menu) {
    toDecrypt();
  }
  // CREATOR MODE
  if (MODE==CREATOR && menu) {
    toCreate();
  }
  // LOCK
  if (MODE==SPLIT) {
    toSplit();
  }

  //KEY
  if (MODE==COMBINE) {
    toCombine();
  }
}

void keyPressed() {
  if ((MODE==ENCRYPTER || MODE==CREATOR || MODE==SPLIT) && !( key == TAB || key == ESC || key == DELETE || key == CODED)) {
    // This ends the message once ENTER is hit
    if (!typed) {
      if ((key != ENTER) && (key != BACKSPACE)) {
        input += key;
        PFont font = loadFont("TimesNewRomanPS-BoldItalicMT-48.vlw");
        textFont(font);
        textSize(22);
        fill(0);
        stroke(0, 143, 17);
        rect(512, height/4, 512, 512);
        fill(0, 143, 17);
        if (input.length()>33) {
          text(input.substring(0, 33), 530, (height/4)+20);
          int limit = (input.length() % 33);
          for (int i = 1; i < input.length()/33; i++) {
            text(input.substring(33*i, (33*i)+33), 530, (height/4)+(20*i)+20);
          }
          text(input.substring(input.length()-limit, input.length()), 530, (height/4)+(input.length()/33)*(20)+20);
        } else {
          text(input, 530, (height/4)+20);
        }
      }
      // Delete a letter
      if (key == BACKSPACE && input.length()!=0) {
        input = input.substring(0, input.length()-1);
        PFont font = loadFont("TimesNewRomanPS-BoldItalicMT-48.vlw");
        textFont(font);
        textSize(22);
        fill(0);
        stroke(0, 143, 17);
        rect(512, height/4, 512, 512);
        fill(0, 143, 17);
        if (input.length()>33) {
          text(input.substring(0, 33), 530, (height/4)+20);
          int limit = (input.length() % 33);
          for (int i = 1; i < input.length()/33; i++) {
            text(input.substring(33*i, (33*i)+33), 530, (height/4)+(20*i)+20);
          }
          text(input.substring(input.length()-limit, input.length()), 530, (height/4)+(input.length()/33)*(20)+20);
        } else {
          text(input, 530, (height/4)+20);
        }
      }
      // Capitalization
      if (keyCode == SHIFT) {
        //println("what???");
      }
    }
    // DO something with the String after enter
    if (key == ENTER) {
      typed = true;
      input = "";  // Reset the input
      if (MODE == SPLIT) {
        println("lock.png and key.png are now saved in your sketch folder!");
      }
      else if (MODE == ENCRYPTER){
        println("output.png is now saved in your sketch folder!");
      }
      else if (MODE == CREATOR){
        println("output.png is now saved in your sketch folder!");
      }

    }
    textFont(loadFont("ProcessingSans-Regular-48.vlw"));
  }
  //println(key);
}


void draw() {

  if (keyPressed && key == ENTER) {
    //println(clicked);
    //println("-");
    if (clicked == false) {
      return;
    } else {

      if (MODE == ENCRYPTER) {
        //println("Encrypting...");
        PImage editedEncrypted = fromStringToPicture(loadImage("source.png"), input);
        image(editedEncrypted, 512, height/4);
        editedEncrypted.save("output.png");
        fill(0);
        stroke(0, 143, 17);
        rect(600, 95, 390, 125);
        fill(0, 143, 17);
        textFont(loadFont("ProcessingSans-Regular-48.vlw"));
        textSize(40);
        text("Encrypted Photo", 600, height/8);
        text("Saved as \"output.png\"", 600, height/8+40);
        text("in your processing files", 600, height/8+80);
      }

      if (MODE == DECRYPTER) {
        //println("Decrypting...");
        String result = imageToString(loadImage("output.png"), DECRYPTLENGTH);
        fill(0);
        stroke(0, 143, 17);
        rect(512, height/4, 512, 512);
        fill(0, 143, 17);
        PFont font = loadFont("TimesNewRomanPS-BoldItalicMT-48.vlw");
        textFont(font);
        textSize(20);
        if (result.length()>33) {
          text(result.substring(0, 33), 530, (height/4)+20);
          int limit = (result.length() % 33);
          for (int i = 1; i < result.length()/33; i++) {
            text(result.substring(33*i, (33*i)+33), 530, (height/4)+(20*i)+20);
          }
          text(result.substring(result.length()-limit, result.length()), 530, (height/4)+(result.length()/33)*(20)+20);
        } else {
          text(result, 530, (height/4)+20);
        }
        textFont(loadFont("ProcessingSans-Regular-48.vlw"));
      }

      if (MODE==CREATOR) {
        //println("Creating...");
        PImage canvas = createImage(512, 512, RGB);
        image(creatorImage(canvas), 512, height/4);
        textSize(40);
        fill(0);
        stroke(0, 143, 17);
        rect(600, 95, 390, 125);
        fill(0, 143, 17);
        canvas.save("output.png");
        text("Encrypted Photo", 600, height/8);
        text("Saved as \"output.png\"", 600, height/8+40);
        text("in your processing files", 600, height/8+80);
      }
      if (MODE==SPLIT) {
        PImage source = loadImage("source.png");
        Lock(source);
        PImage lock = loadImage("lock.png");
        image(lock, 0, height/4);
        PImage key = loadImage("key.png");
        image(key, 512, height/4);
        fill(0);
        stroke(0, 143, 17);
        rect(128, 95, 280, 45);
        fill(0, 143, 17);
        textSize(40);
        text("Lock", 128, height/8);
        fill(0);
        stroke(0, 143, 17);
        rect(640, 95, 280, 45);
        fill(0, 143, 17);
        textSize(40);
        text("Key", 640, height/8);
      }
      if (MODE==COMBINE) {
        String resultKey = putKeyInLock(loadImage("key.png"), loadImage("lock.png"), DECRYPTLENGTH);
        textSize(40);
        fill(0);
        stroke(0, 143, 17);
        rect(640, 95, 330, 45);
        fill(0, 143, 17);
        text("Decrypted Message", 640, height/8);
        fill(0);
        stroke(0, 143, 17);
        rect(512, height/4, 512, 512);
        fill(0, 143, 17);
        PFont font = loadFont("TimesNewRomanPS-BoldItalicMT-48.vlw");
        textFont(font);
        textSize(20);
        if (resultKey.length()>33) {
          text(resultKey.substring(0, 33), 530, (height/4)+20);
          int limit = (resultKey.length() % 33);
          for (int i = 1; i < resultKey.length()/33; i++) {
            text(resultKey.substring(33*i, (33*i)+33), 530, (height/4)+(20*i)+20);
          }
          text(resultKey.substring(resultKey.length()-limit, resultKey.length()), 530, (height/4)+(resultKey.length()/33)*(20)+20);
        } else {
          text(resultKey, 530, (height/4)+20);
        }
        textFont(loadFont("ProcessingSans-Regular-48.vlw"));
      }
    }
  }
}
