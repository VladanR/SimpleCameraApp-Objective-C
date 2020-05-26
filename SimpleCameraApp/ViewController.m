//
//  ViewController.m
//  SimpleCameraApp
//
//  Created by Vladan Randjelovic on 26/05/2020.
//  Copyright © 2020 Vladan Randjelovic. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)savePhoto:(id)sender {
}

- (IBAction)chosePhoto:(id)sender {
    
    
    
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<UIImagePickerControllerInfoKey,id> *)info {
    
    photo = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    [self.imageView setImage:photo];
    [self dismissViewControllerAnimated:YES completion:NULL];
    
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [self dismissViewControllerAnimated:YES completion:NULL];

}

- (IBAction)takePhoto:(id)sender {
    
    photoPicker = [[UIImagePickerController alloc] init];
    photoPicker.delegate = self;
    [photoPicker setSourceType:UIImagePickerControllerSourceTypeCamera];
    [self presentViewController:photoPicker animated:YES completion:NULL];
    
}

@end
