//
//  ToDo.m
//  Apple-E1
//
//  Created by Andres Kwan on 6/3/14.
//  Copyright (c) 2014 Kwan. All rights reserved.
//

#import "ToDo.h"


@implementation ToDo

@dynamic completed;
@dynamic dateCreated;
@dynamic dateFinished;
@dynamic dateStarted;
@dynamic name;
@dynamic toDoDescription;
@dynamic pomodoros;

-(NSString *)sectionName
{
    //creates a representation of the data stored
    NSDate * date = [NSDate dateWithTimeIntervalSince1970:self.dateCreated];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    //full mounth follow by the year
    [dateFormatter setDateFormat:@"MMM yyyy"];
    
#warning for real time apps - cache should be used (reuse data - avoid calculate over and over again)
    return [dateFormatter stringFromDate:date];
}
@end
