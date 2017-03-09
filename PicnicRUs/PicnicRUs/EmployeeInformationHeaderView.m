//
//  EmployeeInformationHeaderView.m
//  PicnicRUs
//
//  Created by Sophia Tung on 3/9/17.
//  Copyright © 2017 Picnic R Us. All rights reserved.
//

#import "EmployeeInformationHeaderView.h"

@interface EmployeeInformationHeaderView ()

@property NSString *firstName, *lastName;

@property int numberEventsWorking;

@property IBOutlet UILabel *nameLabel, *eventsCountLabel;

@end

@implementation EmployeeInformationHeaderView

- (instancetype)init
{
    self = [super init];
    id view;
    if (self)
    {
        view = [[[NSBundle mainBundle] loadNibNamed:@"EmployeeInformationHeaderView" owner:self options:nil] objectAtIndex:0];
    }
    return view;
}

- (void)setInfoWithFirstName:(NSString *)firstName lastName:(NSString *)lastName numberOfEventsWorkingToday:(int)numberOfEvents
{
    if (firstName)
    {
        self.firstName = firstName;
        self.nameLabel.text = [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName ? self.lastName : @""];
    }
    
    if (lastName)
    {
        self.lastName = lastName;
        self.nameLabel.text = [NSString stringWithFormat:@"%@ %@", self.firstName ? self.firstName : @"", self.lastName];
    }
    
    if (numberOfEvents != NSNotFound)
    {
        self.numberEventsWorking = numberOfEvents;
        self.eventsCountLabel.text = [NSString stringWithFormat:@"You've got %i event%@ today.", self.numberEventsWorking, (self.numberEventsWorking == 1) ? @"" : @"s"];
    }
}

@end
