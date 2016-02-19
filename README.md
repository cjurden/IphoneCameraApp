# IphoneCameraApp
App based on an AppCoda demo recreated for a homework assignment in XCode 7 for iOS 9 devices. 

Original App tutorial found [here](http://www.appcoda.com/ios-programming-camera-iphone-app/)

####Sensors Used
*Camera* the entire app is based around the camera. The app defines the camera as a source for a `UIImagePickerController`, a controller that, as the apple documentation states: 
  >manages customizable, system-supplied user interfaces for taking pictures and movies on supported devices, and for choosing saved images and movies for use in your app. An image picker controller manages user interactions and delivers the results of those interactions to a delegate object
  in this app, the delegate that the AppCoda app used (and that I kept the same) was the ViewController, the view of the app that is displayed after the launch screen and occupies the full screen. In future renditions I might only choose the ImageView (where the pictures are displayed on the main screen) to keep the buttons in one place. 
  
####Camera's Contribution
The user may choose to use the camera, in which case the image that they take using the camera is the one that is displayed on the main screen. The camera is specifically utilized in the takePhoto `IBAction`, where it is supplied as the `sourceType` for the `UIImagePickerController` as `UIImagePickerControllerSourceTypeCamera`. This action is tied to a button on the main screen that when tapped, brings the user to the stock iOS camera interface utilizing the delegate system as referenced above.

####My Modifications to the App
This app was created in a prior version of Xcode. I chose to rewrite the app in Xcode 7 for iOS 9 devices. The main change required here was the use of a Main.storyboard as opposed to the .xib files used in past versions. Most of the logic remained the same. In addition to this refactoring, I added a feature to store the image taken with the camera. If the user taps the "save" button, the picture will be added to the user's camera roll following an alert to confirm the user's decision to save. 
####Screenshots
![Alert](/alert.png)
![Main](/main.png)
