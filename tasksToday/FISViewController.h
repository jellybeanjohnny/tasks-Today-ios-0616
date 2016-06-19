//
//  FISViewController.h
//  tasksToday
//
//  Created by Joe Burgess on 6/19/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISViewController : UIViewController

- (NSArray *)getNextYearsEvents;
- (NSArray *)getLastYearsEvents;
//- (void)requestCalendarPermissionWithBlock:(void(^)(BOOL completed))completionHandler;
- (void)requestCalendarPermission;

@end
