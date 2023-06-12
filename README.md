# APCS Final Project

## Group Info
Matthew Monge, William Tang, Period 10.

Group Name: Tangy Mango

Project Name: Codebreaker

## Overview
Our project is an encryption codebreaking device that uses image steganography to hide messages in images. We have five modes: Encrypt, Decrypt, Creator, Lock, Key. Encrypt hides your message in a pre-existing image and saves the image to the sketch folder. Decrypt takes an image and reveals the message. Creator hides your message in a randomly generated image. Lock takes your message and hides it in two images. Key takes the two images and reveals the hidden message.

## Instructions
### Home Screen
Clicking “PLAY” will start the game.
Clicking “INSTRUCTIONS” will lead you to this ReadMe page.

### Encrypter
We have uploaded a premade image (the red Among Us) to Encrypt for the sake of simplicity. However, if you wish to use your own image, please do the following:

Open processing and click on “Sketch” at the top left. Then click “Show Sketch Folder.” Remove “source.png” from the “data” folder and replace it with the image you want to encrypt. The image you upload must be 512 x 512 pixels max and must be in a PNG format. Rename your new image to “source.png”

Now reopen the program, choose the Encrypter mode, type your message, and click “Enter” when done. It will then alter the pre-loaded image on the left to hide your message and show the altered image on the right. The altered image is named “output.png” in your sketch folder.

### Decrypter
Once you click on Decrypter, a file selection window will appear. Click on the top bar that shows the folder you’re currently in and change it to “main.” Once you’re in main, move the “output.png” file into the “data” folder. Then press “Enter” to get the decrypted message.

When you press enter, the decrypted message will be posted on your screen. If you uploaded an image that has not already been encrypted, you will get nonsense messages like "IIIIIIIIII" or "efnZAFFINWigjf." If you successfully uploaded an encrypted image, you should see something like "[YOUR MESSAGE][RANDOM GIBBERISH]." Disregard the random gibberish. 

The returned message currently has a cap of 200 characters. You can change this by changing the value of the instance variable DECRYPTLENGTH in the file “Main.”

### Creator
This is similar to Encrypter, except instead of a pre-loaded image, your message is encrypted into a new randomly generated image. Everything after the message you type will be filled up by a random character generator, creating a rather unique image.

The image also saves as “output.png,” so you can use the Decrypter to decode the message you hid using the Creator mode. It will replace the “output.png” created by the Encrypter method, however, so that may be something you want to keep in mind.

### Lock
The Lock method is similar to Encrypter, except it hides the message in two images through the use of an offset feature. Neither image has the complete message, and you need both in order to figure out what the original message was. The Lock method breaks apart the message into two images.

Also similarly to Encrypter, we have uploaded a pre-existing image for Lock. If you wish, you can follow the same steps detailed above in Encrypter to change the image to one of your liking.

### Key
The Key method does the opposite of the Lock method. It takes two images and combines them to find the hidden message. 

When you first open the Key page, a file selection mechanism will pop up. Click on the top bar that shows the folder you’re currently in and change it to “main.” Once you’re in main, move the “lock.png” and “key.png” files that were created by Lock into the “data” folder. Then press “Enter” to get the decrypted message.

## Final Note
You may notice in our Decrypter and Key classes that the file selection mechanism only uploads the new images to the decryption part of the code, and doesn’t actually change the image that is shown on the screen. This results in a correct decrypted message, but an image that is not updated.

At first, we planned on updating the image shown immediately after the file upload, but we ultimately decided to keep it the way it is now because we felt that it fit the theme of a hidden encryption/decryption device that keeps the actual workings ambiguous. To the user, it seems as if the image hasn’t changed, when in reality, the message has already been decrypted.

Overall, this project has been incredibly interesting, exciting, and a great learning experience, and we are both grateful to have had the freedom to explore a topic as niche as image steganography. Thank you Mr. K!
