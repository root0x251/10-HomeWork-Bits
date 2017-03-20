//
//  Student.h
//  10-HomeWork-Bits
//
//  Created by Slava on 20.03.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    StudentSubjectTypeMath          = 1 << 0,
    StudentSubjectTypeGeometry      = 1 << 1,
    StudentSubjectTypeScience       = 1 << 2,
    StudentSubjectTypePhysics       = 1 << 3,
    StudentSubjectTypeHistory       = 1 << 4,
    StudentSubjectTypeGeology       = 1 << 5,
    StudentSubjectTypeEconomics     = 1 << 6,
    StudentSubjectTypeBotany        = 1 << 7,
    StudentSubjectTypeDrama         = 1 << 8,
    StudentSubjectTypeGym           = 1 << 9
} StudentSubjectType;

@interface Student : NSObject

@property (assign, nonatomic) StudentSubjectType study;

@end
