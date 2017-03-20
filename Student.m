//
//  Student.m
//  10-HomeWork-Bits
//
//  Created by Slava on 20.03.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import "Student.h"

@implementation Student

- (NSString *) answerByType: (StudentSubjectType) type {
    return self.study & type ? @"yes" : @"no";
}

- (NSString *) description {
    return [NSString stringWithFormat:@"\nStudent is studying:\n"
            "Math - %@\n"
            "Geometry - %@\n"
            "Science - %@\n"
            "Physics - %@\n"
            "History - %@\n"
            "Geology - %@\n"
            "Economics - %@\n"
            "Botany - %@\n"
            "Drama - %@\n"
            "Gym - %@",
            [self answerByType:StudentSubjectTypeMath],
            [self answerByType:StudentSubjectTypeGeometry],
            [self answerByType:StudentSubjectTypeScience],
            [self answerByType:StudentSubjectTypePhysics],
            [self answerByType:StudentSubjectTypeHistory],
            [self answerByType:StudentSubjectTypeGeology],
            [self answerByType:StudentSubjectTypeEconomics],
            [self answerByType:StudentSubjectTypeBotany],
            [self answerByType:StudentSubjectTypeDrama],
            [self answerByType:StudentSubjectTypeGym]];

}

@end
