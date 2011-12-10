//
//  Rule.h
//  XML
//
//  Created by Filippo Sanfilippo on 09/12/2011.

#import <UIKit/UIKit.h>


@interface Rule : NSObject {
	
	NSInteger ID;
	NSString *title;        //Same name as the Entity Name.
	NSString *content;      //Same name as the Entity Name.
	NSString *note;         //Same name as the Entity Name.
	NSString *exceptions;   //Same name as the Entity Name.
    NSString *category;     //Same name as the Entity Name.
    NSString *section;      //Same name as the Entity Name.
}

@property (nonatomic, readwrite) NSInteger ID;
@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *content;
@property (nonatomic, retain) NSString *note;
@property (nonatomic, retain) NSString *exceptions;
@property (nonatomic, retain) NSString *category;
@property (nonatomic, retain) NSString *section;

@end
