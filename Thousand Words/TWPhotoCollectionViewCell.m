//
//  TWPhotoCollectionViewCell.m
//  Thousand Words
//
//  Created by Matthew Linaberry on 12/23/14.
//  Copyright (c) 2014 Matthew Linaberry. All rights reserved.
//

#import "TWPhotoCollectionViewCell.h"
#define IMAGEVIEW_BORDER_LENGTH 5

@implementation TWPhotoCollectionViewCell
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setup];
    }
    return self;
}

// called by the story board...
-(id) initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self setup];
    }
    return self;
}

- (void) setup
{
    // centers the image...
    self.bounds = CGRectMake(0,0,155,155);  // the bounds of the CollectionViewCells are 50x50 by default.  need to set the bounds here!
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectInset(self.bounds, IMAGEVIEW_BORDER_LENGTH, IMAGEVIEW_BORDER_LENGTH)];  // our property!
    [self.contentView addSubview:self.imageView];  // we can put our images into this contentView for the cell.
}
@end
