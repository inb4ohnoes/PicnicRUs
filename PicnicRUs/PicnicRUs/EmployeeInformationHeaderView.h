//
//  EmployeeInformationHeaderView.h
//  PicnicRUs
//
//  Created by Sophia Tung on 3/9/17.
//  Copyright © 2017 Picnic R Us. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EmployeeInformationHeaderView : UIView

- (void)setInfoWithFirstName:(NSString *)firstName lastName:(NSString *)lastName numberOfEventsWorkingToday:(int)numberOfEvents;

@end
