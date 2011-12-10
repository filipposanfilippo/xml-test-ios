//
//  XMLAppDelegate.h
//  XML
//
//  Created by Filippo Sanfilippo on 09/12/2011.

#import <UIKit/UIKit.h>

@interface XMLAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
	
	NSMutableArray *rules;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@property (nonatomic, retain) NSMutableArray *rules;

@end

