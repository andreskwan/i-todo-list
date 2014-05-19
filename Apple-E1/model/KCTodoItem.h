//
//  KCTodoItem.h
//  Apple-E1
//
//  Created by Andres Kwan on 5/19/14.
//  Copyright (c) 2014 Kwan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KCTodoItem : NSObject

@property NSString *itemName;
@property BOOL     completed;
@property (readonly) NSDate * creationDate;

@end
