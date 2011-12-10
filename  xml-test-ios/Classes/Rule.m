//
//  Rule.m
//  XML
//
//  Created by Filippo Sanfilippo on 09/12/2011.

#import "Rule.h"


@implementation Rule

@synthesize ID, title, content, note, exceptions, category, section;



- (void) dealloc {
	
	[title release];
	[content release];
	[note release];
    [exceptions release];
    [category release];
    [section release];
	[super dealloc];
}

@end
