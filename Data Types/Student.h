//
//  Student.h
//  Data Types
//
//  Created by Роман Приискалов on 21/03/15.
//  Copyright (c) 2015 Роман Приискалов. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

typedef enum {
    ASGenderMale = 0,
    ASGenderFemale
} Gender;

@property(strong, nonatomic) NSString* name;

@property(assign, nonatomic) Gender gender;

@end