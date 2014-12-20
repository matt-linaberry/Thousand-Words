//
//  TWCoreDataHelper.m
//  Thousand Words
//
//  Created by Matthew Linaberry on 12/20/14.
//  Copyright (c) 2014 Matthew Linaberry. All rights reserved.
//

#import "TWCoreDataHelper.h"
#import <UIKit/UIKit.h>
@implementation TWCoreDataHelper

+ (NSManagedObjectContext *) managedObjectContext
{
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    
    if ([delegate performSelector:@selector(managedObjectContext)])
    {
        context = [delegate managedObjectContext];
    }
    return context;
}
@end
