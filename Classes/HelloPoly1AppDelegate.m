//
//  HelloPoly1AppDelegate.m
//  HelloPoly1
//
//  Created by Ed on 05/07/09.
//  Copyright Ed Lui 2009. All rights reserved.
//

#import "HelloPoly1AppDelegate.h"

@implementation HelloPoly1AppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
