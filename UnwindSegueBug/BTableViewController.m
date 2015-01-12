//
//  BTableViewController.m
//  UnwindSegueBug
//
//  Created by Michael Emmons on 1/12/15.
//  Copyright (c) 2015 App Apps, LLC. All rights reserved.
//

#import "BTableViewController.h"

@interface BTableViewController ()

@end

@implementation BTableViewController

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
	cell.textLabel.text = [NSString stringWithFormat:@"Tap me again %li", (long)indexPath.row];

	return cell;
}

- (IBAction)bUnwindSegue:(UIStoryboardSegue *)segue;
{
	NSLog(@"Unwinding...this unwind segue will never get called.");
}

@end
