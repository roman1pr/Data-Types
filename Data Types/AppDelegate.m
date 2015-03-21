//
//  AppDelegate.m
//  Data Types
//
//  Created by Роман Приискалов on 21/03/15.
//  Copyright (c) 2015 Роман Приискалов. All rights reserved.
//

#import "AppDelegate.h"
#import "Student.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
   
    
    
    BOOL boolVar = YES;
    
    NSInteger NSInt = 10;
    
    NSUInteger nsInt = 100;
    
    CGFloat cgfl = 1.5f;
    
    double doubvar = 2.0f;
   
    NSNumber* boolNumber = [NSNumber numberWithBool:boolVar];
    NSNumber* Integern = [NSNumber numberWithInteger:NSInt];
    
    NSArray* arr = [[NSArray alloc] initWithObjects:boolNumber, Integern, nil];
    
    NSLog(@"%d %d",
          [[arr objectAtIndex:0] boolValue],
          [[arr objectAtIndex:1] integerValue]
          );
    
    NSLog(@"%d %d %d %f %f",boolVar, NSInt, nsInt, cgfl, doubvar);
    
    
    NSInteger a = 5;
    
    NSInteger *b = &a;
    *b = 8;
    
    NSLog(@"%d %d", *b, a);
    
    self.st1 = [[Student alloc] init];
    
    self.st1.name = @"name of st1";
    
    Student *st2 = self.st1;
    
    NSLog(@"%@", self.st1.name);
    
    NSLog(@"%@", st2.name);
    
    NSInteger z1 = 0;
    
    [self test:a best:&z1];
    
    NSLog(@"%d",z1);
    
    [self.st1 setGender:ASGenderFemale];
    
    
    CGPoint point;
    
    point = CGPointMake(3, 2);
    
    point.x = 5.4f;
    point.y = 5;
    
    
    
    CGSize size;
    
    size.height = 12;
    size.width = 13;
    
    CGRect rect;
    
    rect.origin = point;
    rect.size = size;
    
    CGPoint point1 =   CGPointMake(3, 2);
    CGPoint point2 =   CGPointMake(5, 6);
    CGPoint point3 =   CGPointMake(8, 9);
    
    NSArray *arr2 = [[NSArray alloc] initWithObjects:
        [NSValue valueWithCGPoint:point1],
        [NSValue valueWithCGPoint:point2],
        [NSValue valueWithCGPoint:point3],
    nil];
    
    for (NSValue *value in arr2) {
        CGPoint p = [value CGPointValue];
        NSLog(@"%@", NSStringFromCGPoint(p));
    }
    
    return YES;
}

-(int) test:(NSInteger ) var1 best:(NSInteger *) var2{
    
    *var2 = 6;
    return var1;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
