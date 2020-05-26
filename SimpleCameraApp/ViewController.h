//
//  ViewController.h
//  SimpleCameraApp
//
//  Created by Vladan Randjelovic on 26/05/2020.
//  Copyright © 2020 Vladan Randjelovic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate> {
    
    UIImagePickerController * photoPicker;
    UIImage * photo;
    
}

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)takePhoto:(id)sender;
- (IBAction)chosePhoto:(id)sender;
- (IBAction)savePhoto:(id)sender;

@end

