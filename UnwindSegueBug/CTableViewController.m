//
//  CTableViewController.m
//  UnwindSegueBug
//
//  Created by Michael Emmons on 1/12/15.
//  Copyright (c) 2015 App Apps, LLC. All rights reserved.
//

#import "CTableViewController.h"

@interface CTableViewController ()

@end

@implementation CTableViewController

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
	cell.textLabel.text = [NSString stringWithFormat:@"Tap to attempt unwind segue %li", (long)indexPath.row];

	return cell;
}

@end
