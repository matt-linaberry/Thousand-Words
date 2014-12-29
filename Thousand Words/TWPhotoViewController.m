//
//  TWPhotoViewController.m
//  Thousand Words
//
//  Created by Matthew Linaberry on 12/29/14.
//  Copyright (c) 2014 Matthew Linaberry. All rights reserved.
//

#import "TWPhotoViewController.h"
#import "Photo.h"
@interface TWPhotoViewController ()

@end

@implementation TWPhotoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    self.imageView.image = self.photo.image;
}

- (IBAction)addFilterButtonPressed:(UIButton *)sender {
}

- (IBAction)deleteButtonPressed:(UIButton *)sender {
    
    // delete the photo
    [[self.photo managedObjectContext] deleteObject:self.photo];

    
    NSError *error = nil;
    [[self.photo managedObjectContext] save:&error];
    
    if (error)
    {
        NSLog(@"error");
    }
    
    // close the VC
    [self.navigationController popViewControllerAnimated:YES];  // do this for push segues.  Genius!
    
}
@end
