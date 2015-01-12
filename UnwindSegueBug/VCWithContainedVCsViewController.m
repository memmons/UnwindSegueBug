//
//  VCWithContainedVCsViewController.m
//  UnwindSegueBug
//
//  Created by Michael Emmons on 1/12/15.
//  Copyright (c) 2015 App Apps, LLC. All rights reserved.
//

#import "VCWithContainedVCsViewController.h"

@interface VCWithContainedVCsViewController ()

@end

@implementation VCWithContainedVCsViewController

/* This view controller contains BTableViewController.
   If for some reason BTableViewController could not handle bUnwindSegue, this view controller should 
   figure out which view controller should handle it. According to technical note TN2298 (https://developer.apple.com/library/ios/technotes/tn2298/_index.html)
   the source view controller of an unwind segue defers to its parent to locate a view controller that wants to handle the unwind action. Your container view controller 
   should override the method shown in Listing 2 to search its child view controllers for a view controller that wants to handle the unwind action. If none of a container's 
   child view controllers want to handle the unwind action, it should invoke the super's implementation and return the result.
   Since this is the parent VC, viewControllerForUnwindSegueAction should be called here. It isn't.
 */

- (UIViewController *)viewControllerForUnwindSegueAction:(SEL)action fromViewController:(UIViewController *)fromViewController withSender:(id)sender
{
	NSLog(@"Technical not TN2298 indicates child VCs defer to their parent to determine where an unwind segue will be handled.");
	return self;
}


- (IBAction)containerVCUnwindSegue:(UIStoryboardSegue *)segue;
{
	NSLog(@"Unwinding to the view controller which contains the table VC");
}

@end
