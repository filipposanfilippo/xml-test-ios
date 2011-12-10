//
//  RuleDetailViewController.h
//  XML
//
//  Created by Filippo Sanfilippo on 09/12/2011.

#import <UIKit/UIKit.h>

@class Rule;

@interface RuleDetailViewController : UIViewController {

	IBOutlet UITableView *tableView;
	
	Rule *aRule;
}

@property (nonatomic, retain) Rule *aRule;

@end
