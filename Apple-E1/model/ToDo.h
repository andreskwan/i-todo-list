//
//  ToDo.h
//  Apple-E1
//
//  Created by Andres Kwan on 5/26/14.
//  Copyright (c) 2014 Kwan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface ToDo : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSDate * dateCreated;
@property (nonatomic, retain) NSDate * dateFinished;
@property (nonatomic, retain) NSDate * dateStarted;
@property (nonatomic, retain) NSString * toDoDescription;
@property (nonatomic, retain) NSNumber * completed;

@end
