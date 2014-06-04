//
//  ToDo.h
//  Apple-E1
//
//  Created by Andres Kwan on 6/3/14.
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
@property (nonatomic, retain) NSString * toDoDescription;
@property (nonatomic) int16_t pomodoros;

//will be calculated, not stored so we don't need to store it
//on the DB
@property (nonatomic, readonly) NSString * sectionName;

@end
