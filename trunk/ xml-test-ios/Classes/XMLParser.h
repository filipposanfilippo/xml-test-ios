//
//  XMLParser.h
//  XML
//
//  Created by Filippo Sanfilippo on 09/12/2011.

#import <UIKit/UIKit.h>

@class XMLAppDelegate, Rule;

@interface XMLParser : NSObject {

	NSMutableString *currentElementValue;
	
	XMLAppDelegate *appDelegate;
	Rule *aRule; 
}

- (XMLParser *) initXMLParser;

@end
