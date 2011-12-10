//
//  RootViewController.h
//  XML
//
//  Created by Filippo Sanfilippo on 09/12/2011.

#import <UIKit/UIKit.h>

@class XMLAppDelegate, RuleDetailViewController;

@interface RootViewController : UITableViewController {
	
	XMLAppDelegate *appDelegate;
	RuleDetailViewController *bdvController;
}

@end
