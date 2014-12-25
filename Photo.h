//
//  Photo.h
//  Thousand Words
//
//  Created by Matthew Linaberry on 12/24/14.
//  Copyright (c) 2014 Matthew Linaberry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Album;

@interface Photo : NSManagedObject

@property (nonatomic, retain) id image;
@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) Album *albumBook;

@end
