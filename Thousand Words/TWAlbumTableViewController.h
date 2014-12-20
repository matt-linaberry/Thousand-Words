//
//  TWAlbumTableViewController.h
//  Thousand Words
//
//  Created by Matthew Linaberry on 12/13/14.
//  Copyright (c) 2014 Matthew Linaberry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TWAlbumTableViewController : UITableViewController <UIAlertViewDelegate>

- (IBAction)addAlbumBarButtonItemPressed:(id)sender;

@property (strong, nonatomic) NSMutableArray *albums;

@end
