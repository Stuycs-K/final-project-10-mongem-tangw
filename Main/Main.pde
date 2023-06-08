int HOME = -1;
int CHOOSE = 0;
int ENCRYPTER = 1;
int DECRYPTER = 2;
//int CREATOR = 3;
int MODE = -1;
int DECRYPTLENGTH = 200;
Boolean clicked = false;

void setup() {
  size(1024, 1024);
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


    //MODE+=1;
    //if (MODE==3)
    //  MODE=0;
  }
  println(MODE + "");

  // ENCRYPTER MODE
  if (MODE==ENCRYPTER) {
    fill(48, 165, 184);
    rect(128, 95, 280, 45);
    fill(100, 100, 100);
    text("Original Photo", 128, height/8);
    PImage source = loadImage("source.png");
    image(source, 0, height/4);
    textSize(40);
    fill(48, 165, 184);
    rect(width/6, 800, 700, 150);
    rect(40, 800, 100, 150);
    fill(0, 0, 0);
    text("Please type what you wish to encrypt.", width/5, 840);
    text("What you encrypt will be shown", width/5, 880);
    text("on the right. Press enter when done!", width/5, 920);
    textSize(20);
    text("Mode:", 45, 840);
    text("encryption", 45, 860);
    textSize(40);
  }

  // DECRYPTER MODE
  if (MODE==DECRYPTER) {
    fill(48, 165, 184);
    rect(128, 95, 280, 45);
    fill(100, 100, 100);
    text("Uploaded Photo", 128, height/8);
    PImage output = loadImage("output.png");
    image(output, 0, height/4);
    textSize(40);
    fill(48, 165, 184);
    rect(width/6, 800, 700, 150);
    rect(40, 800, 100, 150);
    fill(0, 0, 0);
    text("Please press enter to get decrypted", width/5, 840);
    text("message", width/5, 880);
    textSize(20);
    text("Mode:", 45, 840);
    text("decryption", 45, 860);
    textSize(40);
  }
  //if(MODE==CREATOR){
  // fill(48,165,184);
  // rect(128,95,280,45);
  // fill(100,100,100);
  // text("placeholder", 128, height/8);
  // PImage newImage = createImage(512,512,RGB);
  // image(newImage,0,height/4);
  // textSize(40);
  // fill(48,165,184);
  // rect(width/6, 800, 700, 150);
  // rect(40,800,100,150);
  // fill(0,0,0);
  // text("PLACEHOLDER", width/5, 840);
  // text("PLACEHOLDER", width/5, 880);
  // textSize(20);
  // text("Mode:", 45, 840);
  // text("CREATOR", 45, 860);
  // textSize(40);
  //}
}

void keyPressed() {
  if (MODE==ENCRYPTER) {
    //  || MODE==CREATOR){    -- uncomment this out and add to previous statement as OR function.
    // This ends the message once ENTER is hit
    if (!typed) {
      if (key != ENTER) {
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

      //if (MODE==CREATOR) {
      //  println("creator");
      //  PImage canvas = createImage(512, 512, RGB);
      //  image(createImage(canvas), 512, height/4);
      //  textSize(40);
      //  fill(100, 100, 100);
      //  text("Encrypted Photo", 640, height/8);
      //  text("Saved as \"output.png\"", 640, height/8+40);
      //  text("in your processing files", 640, height/8+80);
      //}
      
    } //this one
  }
}
