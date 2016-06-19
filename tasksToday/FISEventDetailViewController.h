//
//  FISEventDetailViewController.h
//  tasksToday
//
//  Created by Matt Amerige on 6/18/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <EventKit/EventKit.h>

@interface FISEventDetailViewController : UIViewController

@property (strong, nonatomic) NSArray <EKEvent *> *events;

@end
