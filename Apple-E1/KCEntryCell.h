//
//  KCEntryTVCell.h
//  Apple-E1
//
//  Created by Andres Kwan on 6/8/14.
//  Copyright (c) 2014 Kwan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ToDo;

@interface KCEntryCell : UITableViewCell

+(CGFloat)heightForEntry:(ToDo *)entry;

- (void)configureCellForEntry:(ToDo *)entry;

@end
