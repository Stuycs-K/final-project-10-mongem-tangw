# Work Log

## William

### 5/22/23

created decrypter class, keyPressed branch, wrote keyPressed method
started to rewrite CS plan

### 5/23/23

updated keyPressed method, redrafted methods in plan

### 5/24/23

created fromStringtoPicture method and ran it successfully in main

### 5/25/23 - 5/28/23

Was at the national debate tournament in Kentucky and was unable to work on the final project :(

### 5/29/23

Got up to date with the project, played around with the user interface, and outlined a problem with the UI that I will work on tomorrow.

### 5/30/23

Moved around logic for the user interface, changed background of the project

### 5/31/23

Worked with Matthew to fix user interface so it's functioning for the MVP, and outlined the demo presentation + practiced. Created demo branch, hid Creator method and fixed typos so the project MVP is ready to present. Updated main and demo as well.

### 6/4/23

Diagrammed out a new user interface. Will implement in class tomorrow.

### 6/5/23

We were the first group to volunteer to demo our MVP in class. Outside of class, I made a plan for the user interface features that I'd like to create by the end of this week. I set deadlines for each section and made a detailed plan of action. I started on making the home screen for the project.

### 6/6/23

Divided up remaining work in class with Matthew. Tested demo class and worked together on Matthew's computer in class. At home, played around with the Creator class to test functionality and thought about integration into new user interface.

### 6/7/23

Finished basic home screen for the project. Started working on the CHOOSE OPTION page with the different buttons, and tried animating the Creator method.

### 6/8/23

Finished home page, finished choose mode page, started working on backspace and enter methods.

### 6/9/23

Internet wasn't working so wasn't able to commit any changes.

### 6/10/23

Cleaned up each mode in preparation for the back button.

### 6/11/23

Added back button to each mode.
Linked the instruction button to Github ReadMe page.
Fixed backspace in encrypter and creator methods.
Fixed input bug in creator, encrypter, and decrypter.
Added built-in file selection mechanism.
Updated console print statements.
Updated the user interface and moved the spacing of the rectangles around.


## Matthew

### 5/22/23

created encrypter class and lastNineRGB method + branch
started to rewrite CS plan

### 5/23/23

added onto decrypter class with lastNineRGB method, added and uploaded testing image, and edited main to compile

### 5/24/23

created a mouseClicked() mode selection method
added onto the fromStringToPicture method to save an altered image to your computer as "output.png"
added a label to notify user whichimage is original and which is modified

### 5/25/23

created imageToString() method that reveals a hidden message in a photo
expanded draw() method by creating a UI, easier for the user to use and interact with
created a algorithm within keypressed and draw that print out what the user wishes to encrpyt as they are writing it
cleaned up print statements

### 5/26/23

cleaned UI and edited confusing test

### 5/29/2023

started new CREATOR mode which creates an image based on input text (did not upload to main)

### 5/30/2023

Fixed UI issue where mode selection was out of order

### 5/31/2023

Added clicked? boolean that makes sure code does not accidendally break if ENTER is pressed before a mode is selected. Working on bugs, need to be implemented

### 6/5/2023

Finished UI, finalized Creator mode and uploaded/merged to demo

### 6/6/2023

Edited failed merge from yesterday, started split+combine classes in matthew-testing branch

### 6/7/2023

Finished code for Lock+Key mode, (old split+combine), will work on implementing into main

### 6/8/2023

Rewrote fromStringToImage so its more easily adapted to other modes that arent encryption. Started lock mode to decrypt images made in key mode.

### 6/9/2023

Finished lock and key method, fixed issue where I cast a char as an int

### 6/11/2023

Implemented and fully merged william and I's code. Refrubished UI and theme of the project, added music, fixed all (known) bugs. Ready for final product and merge to main

### 6/12/2023

Dev Log 

### DEV LOG

### I. Working features:

Image Encrypter

Image Decrypter

Image Creator

Lock + Key Image Encrypter

Working onscreen keyboard

Menu selection and UI

File selection menu


### II. Bugs:

These images MUST be in the data or processing folders for some code to function, for example

Encrypter + Lock : REQUIRE "source.png" 

Decrypter : REQUIRE "output.png"

Key : REQUIRE "key.png" and "lock.png"

Without these files, the code will crash and throw null exceptions.


You may notice in our Decrypter and Key classes that the file selection mechanism only uploads the new images to the decryption part of the code, and doesn’t actually change the image that is shown on the screen. This results in a correct decrypted message, but an image that is not updated.
At first, we planned on updating the image shown immediately after the file upload, but we ultimately decided to keep it the way it is now because we felt that it fit the theme of a hidden encryption/decryption device that keeps the actual workings ambiguous. To the user, it seems as if the image hasn’t changed, when in reality, the message has already been decrypted.

Sometimes, buttons take a few clicks to register being pressed. We think this has to do with the speed at which theyre clicked, but its unclear.

Despite being an Image decrypter, it does not allow you to fully hide information from the federal government. We have tried. Did not work. Waiting for our subpoena.

### III. Helpful resources:

https://www.mygreatlearning.com/blog/image-steganography-explained/

https://processing.org/reference/

https://en.wikipedia.org/wiki/Steganography

