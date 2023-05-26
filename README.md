# APCS Final Project
THIS DOCUMENT IS REQUIRED
## Group Info
Matthew Monge
William Tang
Period 10
## Overview
An Image encrypter and decrypter! AKA as steganography.
## Instructions
We have uploaded a premade image to both encrypt and decrypt for the sake of the MVP presentation, however, if you wish to use this on your own, please follow these instructions:
Remove "source.png"  within the DATA folder and replace it with your own file you wish to encrypt. Must be 512x512 pixels MAX and a PNG. Keep the placeholder "output.png" for now as it is required for the code to run.
Following the onscreen instructions to encrypt your photo. Click your mouse button until you reach the encryption screen. It will tell you to type out what you wish to encrypt. 
For the time being, only lowercase and basic punctuation can be accepted. Backspace, SHIFT, ALT, etc, wont break the code, but WILL make the message harder to read. 
Once done, by pressing enter, a new "upload.png" will be saved in your processing files (not DATA folder). You may do with this as you please.

If you want to decrypt a photo you have, make sure the "upload.png" in your DATA folder is correct, and run the program. Click your mouse until it says "press enter to get encrypted photo". 
When you press enter, the decrypted message will be posted on your screen. If you uploaded an image that has not already been encrypted, you will get nonsense messages like "IIIIIIIIII" or "efnZAFFINWigjf." If you sucessfully uploaded an already encrypted message, you should see something like "(YOUR MESSAGE HERE)(RANDOM GIBBERISH HERE)." The returned message currently has a cap of 50 characters. You can change this if you wish by changing the instance variable DECRYPTLENGTH in main.
