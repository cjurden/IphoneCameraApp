//
//  ViewController.h
//  CameraAppObc
//
//  Created by Nicholas Jurden on 2/18/16.
//  Copyright © 2016 Nicholas Jurden. All rights reserved.
//
//  based on http://www.appcoda.com/ios-programming-camera-iphone-app/
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)takePhoto:(UIButton *)sender;
- (IBAction)selectPhoto:(UIButton *)sender;
- (IBAction)savePhoto:(UIButton *)sender;


@end

