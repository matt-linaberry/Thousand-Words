//
//  TWPhotosCollectionViewController.h
//  Thousand Words
//
//  Created by Matthew Linaberry on 12/20/14.
//  Copyright (c) 2014 Matthew Linaberry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Album.h"

@interface TWPhotosCollectionViewController : UICollectionViewController
@property (strong, nonatomic) Album *album;
- (IBAction)cameraBarButtonItemPressed:(UIBarButtonItem *)sender;

@end
