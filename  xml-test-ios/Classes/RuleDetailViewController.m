//
//  RuleDetailViewController.m
//  XML
//
//  Created by Filippo Sanfilippo on 09/12/2011.


#import "RuleDetailViewController.h"
#import "Rule.h"

@implementation RuleDetailViewController

@synthesize aRule;

/*
// Override initWithNibName:bundle: to load the view using a nib file then perform additional customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.title = @"Rule";
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	
	[tableView reloadData];
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tv cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];

    }
	
	switch(indexPath.section)
	{
		case 0:
			cell.textLabel.text = aRule.title;
			break;
		case 1:
			cell.textLabel.text = aRule.content;
			break;
		case 2:
			cell.textLabel.text = aRule.note;
			break;
        case 3:
			cell.textLabel.text = aRule.exceptions;
			break;
        case 4:
			cell.textLabel.text = aRule.category;
			break;
        case 5:
			cell.textLabel.text = aRule.section;
			break;
	}
	
	return cell;
}

- (NSString *)tableView:(UITableView *)tblView titleForHeaderInSection:(NSInteger)section {
	
	NSString *sectionName = nil;
	
	switch(section)
	{
		case 0:
			sectionName = [NSString stringWithString:@"title"];
			break;
		case 1:
			sectionName = [NSString stringWithString:@"content"];
			break;
		case 2:
			sectionName = [NSString stringWithString:@"note"];
			break;
        case 3:
			sectionName = [NSString stringWithString:@"exceptions"];
			break;
        case 4:
			sectionName = [NSString stringWithString:@"category"];
			break;
        case 5:
			sectionName = [NSString stringWithString:@"section"];
			break;
	}
	
	return sectionName;
}


- (void)dealloc {
	
	[aRule release];
	[tableView release];
    [super dealloc];
}


@end
