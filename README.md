Hi Unify team,

I have completed the test with xcode 8 since I did not had xcode 7 on my local machine. 
To save the images securely I have used Keychain project from github.
Instead of using cocoapods, I have used the swift file directly from the project.
My ios version on my iPhone was incompatible with my xcode ios version, due to which I could not test my project(camera pictures) on my phone.
Sorry for the inconvenience. But I tried my level best so that my application wont crash.
Small explanation about my code.
There are 2 view Controllers
1. MainViewController
2. PreviewViewController
The MainViewController has the burst button which on clicked saves the 5 images(I have used dispatch after to create 
a delay of 0.5 seconds)
after every 0.5 seconds, it will save the image using KeyChainSwift library as imagedata into the key chain.
I wanted to use core data to persistently save the key of the images being saved, but due to lack of time I have not used persistent storage

The PreviewViewController, display all the images stored in the keychain using the same library.

You can download the project and open it using xcode and you will then be able to use it.

Apologies for all the inconvenience.

Hope to hear back soon.

Regards,
Pawan
