//
//  AppDelegate.m
//  NumberProblems-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

static int multiple = 8;
static int divisor = 6;
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    [self iterateCount:4];
    
    
    return YES;
}

- (void)iterateCount:(int) count{
    if(count > 0){
        NSLog(@"Iterate %d", count);
        int product = multiplied(count);
        NSLog(@"Multiplied %d by %d to be %d", count, multiple, product);
        NSLog(@"Divided %d by %d to be %f", product, divisor, divided(product));
        count --;
        [self iterateCount:count];
    }
}

int multiplied(int integer){
    return integer * multiple;
}

float divided(int integer){
    return (float)integer / divisor;
}

@end
