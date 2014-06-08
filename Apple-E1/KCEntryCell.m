//
//  KCEntryTVCell.m
//  Apple-E1
//
//  Created by Andres Kwan on 6/8/14.
//  Copyright (c) 2014 Kwan. All rights reserved.
//

#import "KCEntryCell.h"
#import "ToDo.h"

@interface KCEntryCell()
@property (weak, nonatomic) IBOutlet UILabel *dateCreatedLabel;
@property (weak, nonatomic) IBOutlet UILabel *todoDescriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UIImageView *mainImageView;
@property (weak, nonatomic) IBOutlet UIImageView *moodImageView;

@end

@implementation KCEntryCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+(CGFloat)heightForEntry:(ToDo *)entry
{
    const CGFloat topMargin = 35.0f;
    const CGFloat bottomMargin = 100.0f;
    const CGFloat minHeight = topMargin + bottomMargin + 71.0f;
    
    //font to be used in the Cell
    UIFont *font = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    
    //calculate the bounding box of the entry body text or the Content
    //Muliple lines allowed
    //Wrap text
    CGRect boundingBox = [entry.toDoDescription boundingRectWithSize:CGSizeMake(202, CGFLOAT_MAX)
                                                             options:(NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin)
                                                          attributes:@{NSFontAttributeName: font}
                                                             context:nil];
//    return MAX(minHeight, CGRectGetHeight(boundingBox) + topMargin + bottomMargin);
      return MAX(minHeight, CGRectGetHeight(boundingBox) + minHeight);
}

-(void)configureCellForEntry:(ToDo *)entry
{
    self.todoDescriptionLabel.text = entry.toDoDescription;
    self.nameLabel.text = entry.name;
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"EEEE, MMMM d yyyy"];
    //kwan
    NSDate * dateCreated = [NSDate dateWithTimeIntervalSince1970:entry.dateCreated];
    self.dateCreatedLabel.text = [dateFormatter stringFromDate:dateCreated];
    
    if (entry.imageData) {
        self.mainImageView.image = [UIImage imageWithData:entry.imageData];
    }else{
        self.mainImageView.image = [UIImage imageNamed:@"icn_noImage"];
    }
    
//    if (entry.mood) {
//        self.mainImageView.image = [UIImage imageWithData:entry.imageData];
//    }else{
//        self.mainImageView.image = [UIImage imageNamed:@"icn_noImage"];
//    }
//    
    
    
}

@end
