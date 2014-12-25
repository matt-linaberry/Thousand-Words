//
//  TWPictureDataTransformer.m
//  Thousand Words
//
//  Created by Matthew Linaberry on 12/24/14.
//  Copyright (c) 2014 Matthew Linaberry. All rights reserved.
//

#import "TWPictureDataTransformer.h"
#import <UIKit/UIKit.h>
@implementation TWPictureDataTransformer
+(Class) transformedValueClass
{
    return [NSData class];
}

+(BOOL) allowsReverseTransformation
{
    return YES; // need to allow back and forth retrieval!
}

-(id) transformedValue:(id)value
{
    return UIImagePNGRepresentation(value);
}

- (id) reverseTransformedValue:(id)value
{
    UIImage *image = [UIImage imageWithData:value];
    return image;
}
@end
