//
//  Identance.h
//  Identance

#import <UIKit/UIKit.h>

//! Project version number for Identance.
FOUNDATION_EXPORT double IdentanceVersionNumber;

//! Project version string for Identance.
FOUNDATION_EXPORT const unsigned char IdentanceVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <Identance/PublicHeader.h>


@interface UINavigationController(UINavigationBarDelegate)

- (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPopItem:(UINavigationItem *)item;

@end
