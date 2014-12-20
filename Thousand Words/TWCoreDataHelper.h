//
//  TWCoreDataHelper.h
//  Thousand Words
//
//  Created by Matthew Linaberry on 12/20/14.
//  Copyright (c) 2014 Matthew Linaberry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
@interface TWCoreDataHelper : NSObject

+ (NSManagedObjectContext *) managedObjectContext;

@end
