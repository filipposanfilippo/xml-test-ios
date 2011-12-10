//
//  XMLAppDelegate.m
//  XML
//
//  Created by Filippo Sanfilippo on 09/12/2011.

#import "XMLAppDelegate.h"
#import "RootViewController.h"
#import "XMLParser.h"

@implementation XMLAppDelegate

@synthesize window;
@synthesize navigationController, rules;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
	
	
	NSURL *url = [[NSURL alloc] initWithString:@"http://inspitivity.com/rules.php"];
	NSXMLParser *xmlParser = [[NSXMLParser alloc] initWithContentsOfURL:url];
	
	//Initialize the delegate.
	XMLParser *parser = [[XMLParser alloc] initXMLParser];
	
	//Set delegate
	[xmlParser setDelegate:parser];
	
	//Start parsing the XML file.
	BOOL success = [xmlParser parse];
	
	if(success)
		NSLog(@"No Errors");
	else
		NSLog(@"Error Error Error!!!");
	
	// Configure and show the window
	[window addSubview:[navigationController view]];
	[window makeKeyAndVisible];
}


- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
}


- (void)dealloc {
	[rules release];
	[navigationController release];
	[window release];
	[super dealloc];
}

@end
