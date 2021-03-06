//
//  ToDo.h
//  Apple-E1
//
//  Created by Andres Kwan on 6/8/14.
//  Copyright (c) 2014 Kwan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface ToDo : NSManagedObject

@property (nonatomic) BOOL completed;
@property (nonatomic) NSTimeInterval dateCreated;
@property (nonatomic) NSTimeInterval dateFinished;
@property (nonatomic) NSTimeInterval dateStarted;
@property (nonatomic, retain) NSString * name;
@property (nonatomic) int16_t pomodoros;
@property (nonatomic, retain) NSString * toDoDescription;
@property (nonatomic, retain) NSData * imageData;

@end
