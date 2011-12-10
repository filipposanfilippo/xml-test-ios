//
//  XMLParser.m
//  XML
//
//  Created by Filippo Sanfilippo on 09/12/2011.

#import "XMLParser.h"
#import "XMLAppDelegate.h"
#import "Rule.h"

@implementation XMLParser

- (XMLParser *) initXMLParser {
	
	[super init];
	
	appDelegate = (XMLAppDelegate *)[[UIApplication sharedApplication] delegate];
	
	return self;
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName 
  namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qualifiedName 
	attributes:(NSDictionary *)attributeDict {
	
	if([elementName isEqualToString:@"rules"]) {
		//Initialize the array.
		appDelegate.rules = [[NSMutableArray alloc] init];
	}
	else if([elementName isEqualToString:@"rule"]) {
		
		//Initialize the book.
		aRule = [[Rule alloc] init];
		
		//Extract the attribute here.
		aRule.ID = [[attributeDict objectForKey:@"ID"] integerValue];
		
		NSLog(@"Reading id value :%i", aRule.ID);
	}
	
	NSLog(@"Processing Element: %@", elementName);
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string { 
	
	if(!currentElementValue) 
		currentElementValue = [[NSMutableString alloc] initWithString:string];
	else
		[currentElementValue appendString:string];
	
	NSLog(@"Processing Value: %@", currentElementValue);
	
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName 
  namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
	
	if([elementName isEqualToString:@"rules"])
		return;
	
	//There is nothing to do if we encounter the Books element here.
	//If we encounter the Book element howevere, we want to add the book object to the array
	// and release the object.
	if([elementName isEqualToString:@"rule"]) {
		[appDelegate.rules addObject:aRule];
		
		[aRule release];
		aRule = nil;
	}
	else 
		[aRule setValue:currentElementValue forKey:elementName];
	
	[currentElementValue release];
	currentElementValue = nil;
}

- (void) dealloc {
	
	[aRule release];
	[currentElementValue release];
	[super dealloc];
}

@end
