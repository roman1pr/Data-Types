//
//  AppDelegate.h
//  Data Types
//
//  Created by Роман Приискалов on 21/03/15.
//  Copyright (c) 2015 Роман Приискалов. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Student;



typedef NSInteger NSTaburetka; // создание типа на основе инта

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) Student* st1;



@end

 