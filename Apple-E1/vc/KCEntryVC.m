//
//  KCAddToDoItemViewController.m
//  Apple-E1
//
//  Created by Andres Kwan on 5/14/14.
//  Copyright (c) 2014 Kwan. All rights reserved.
//`*

#import "KCEntryVC.h"
#import "KCCoreDataStack.h"
#import "ToDo.h"

@interface KCEntryVC ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *textViewDescription;


@end

@implementation KCEntryVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void) insertDiaryEntry
{
    KCCoreDataStack *coreDataStack = [KCCoreDataStack defaultStack];
    ToDo *entry = [NSEntityDescription insertNewObjectForEntityForName:@"ToDo"
                                                inManagedObjectContext:coreDataStack.managedObjectContext];
    entry.name            = self.textField.text;
    entry.toDoDescription = self.textViewDescription.text;
    entry.completed       = NO;
    entry.dateCreated     = [[NSDate date]timeIntervalSince1970];
    
    [coreDataStack saveContext];
}

- (IBAction)doneWasPress:(id)sender {
    [self insertDiaryEntry];
    [self dismissSelf];
}

- (IBAction)cancelWasPress:(id)sender {
    [self dismissSelf];
}

-(void)dismissSelf
{
    [self.presentingViewController dismissViewControllerAnimated:YES
                                                      completion:nil];
}
@end
