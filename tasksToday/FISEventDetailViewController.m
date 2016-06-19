//
//  FISEventDetailViewController.m
//  tasksToday
//
//  Created by Matt Amerige on 6/18/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISEventDetailViewController.h"

@interface FISEventDetailViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation FISEventDetailViewController

- (void)viewDidLoad
{
	NSString *eventString = [self _formattedEventString];
	self.textView.text = eventString;
}

/**
 Returns all event titles in the events array as a list separated by new lines
 so..
 event1
 event2
 etc..
 */
- (NSString *)_formattedEventString
{
	NSMutableString *result = [[NSMutableString alloc] init];
	
	NSUInteger index = 0;
	for (EKEvent *event in self.events) {
		[result appendFormat:@"%@", event.title];
		
		// Don't append new line for the last item in the array
		if (index != self.events.count - 1) {
			[result appendFormat:@"\n"];
		}
		
		index++;
	}
	
	return result;
}

@end
