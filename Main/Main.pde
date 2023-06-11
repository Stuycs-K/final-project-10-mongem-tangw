int HOME = -1;
int CHOOSE = 0;
int ENCRYPTER = 1;
int DECRYPTER = 2;
int CREATOR = 3;
int MODE = -1;
int DECRYPTLENGTH = 200;
Boolean clicked = false;

void setup() {
  size(1024, 1024);
  MODE = HOME;
  // Home page setup

  // Title of project
  rect(200, 200, 600, 200);
  fill(50, 50, 100);
  textSize(100);
  text("Codebreaker", 225, 330);

  // Play button
  fill(255);
  rect(200, 450, 275, 100);
  fill(50, 50, 100);
  textSize(50);
  text("Play", 290, 520);

  // Instructions button
  fill(255);
  rect(525, 450, 275, 100);
  fill(50, 50, 100);
  textSize(50);
  text("Instructions", 540, 520);
}


//----------------------------------------------------------
void mouseClicked() {
  textSize(40);
  println("Clicked yet: "+clicked);

  // Only start it if user clicks on the PLAY button
  if (!clicked && (MODE == HOME) && (mouseX >= 200 && mouseX <= 475) &&
    (mouseY >= 450 && mouseY <= 550)) {
    clicked = true;
    MODE = CHOOSE;
    background(100);
  }

  // Open up the CHOOSE page with the 4 buttons
  if (MODE == CHOOSE) {
    // Cleaned up method by moving implementation to a separate file
    chooseMode();
  }
  println("The mode is: " + MODE);

  // ENCRYPTER MODE
  if (MODE==ENCRYPTER) {
    background(100);
    toEncrypt();
  }

  // DECRYPTER MODE
  if (MODE==DECRYPTER) {
    background(100);
    toDecrypt();
  }
  // CREATOR MODE
  if (MODE==CREATOR) {
    background(100);
    toCreate();
  }
  // LOCK & KEY
  // ADD HERE
}

void keyPressed() {
  if (MODE==ENCRYPTER || MODE==CREATOR) {
    // This ends the message once ENTER is hit
    if (!typed) {
      if ((key != ENTER) && (key != BACKSPACE)) {
        input += key;
        textSize(20);
        fill(48, 165, 194);
        rect(512, height/4, 512, 512);
        fill(0, 0, 0);
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
      if (key == BACKSPACE){
        
      }
    }
    // DO something with the String after enter
    if (key == ENTER) {
      typed = true;
      //println(input);
    }
  }
}


void draw() {

  if (keyPressed && key == ENTER) {
    println(clicked);
    println("-");
    if (clicked == false) {
      return;
    } else {

      if (MODE == ENCRYPTER) {
        println("encrypt");
        image(fromStringToPicture(loadImage("source.png")), 512, height/4);
        textSize(40);
        fill(100, 100, 100);
        text("Encrypted Photo", 640, height/8);
        text("Saved as \"output.png\"", 640, height/8+40);
        text("in your processing files", 640, height/8+80);
      }

      if (MODE == DECRYPTER) {
        println("decrypt");
        String result = imageToString(loadImage("output.png"), DECRYPTLENGTH);
        textSize(20);
        fill(48, 165, 194);
        rect(512, height/4, 512, 512);
        fill(0, 0, 0);
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
      }

      if (MODE==CREATOR) {
        println("creator");
        PImage canvas = createImage(512, 512, RGB);
        image(createImage(canvas), 512, height/4);
        textSize(40);
        fill(100, 100, 100);
        text("Encrypted Photo", 640, height/8);
        text("Saved as \"output.png\"", 640, height/8+40);
        text("in your processing files", 640, height/8+80);
      }
    }
  }
}
