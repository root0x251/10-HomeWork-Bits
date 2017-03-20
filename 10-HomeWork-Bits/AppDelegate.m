//
//  AppDelegate.m
//  10-HomeWork-Bits
//
//  Created by Slava on 19.03.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import "AppDelegate.h"
#import "Student.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

#pragma mark - lvl 1
//    У каждого рандомно установите предметы
    NSMutableArray *arrayDevTaskOne = [NSMutableArray new];
    for (int i = 0; i < 10; i++) {
        Student *stud = [Student new];
        NSInteger learning = 0;
        for (int j = 0; j < 10; j++) {
            learning = learning | (arc4random() % 2 << j);
        }
        stud.study = learning;
        [arrayDevTaskOne addObject:stud];
        NSLog(@"%@", stud);
    }
#pragma mark - lvl 2
//    разделите их уже на два массива - технари и гуманитарии
    NSMutableArray *arrayTechnician = [NSMutableArray new];     // технарь
    NSMutableArray *arrayHumanities = [NSMutableArray new];     // гуманитарий
    NSMutableArray *arrayAverage = [NSMutableArray new];        // общеобразовательный
    for (Student *string in arrayDevTaskOne) {
        if ((string.study & StudentSubjectTypeMath) && (string.study & StudentSubjectTypePhysics)){
            [arrayTechnician addObject:string];
        } else if ((string.study & StudentSubjectTypeGeology) || (string.study & StudentSubjectTypeHistory)) {
            [arrayHumanities addObject:string];
        } else {
            [arrayAverage addObject:string];
        }
    }
    NSLog(@"++++++++++++++++++Technician++++++++++++++++++");
    for (Student *std in arrayTechnician) {
        NSLog(@"%@", std);
    }
    NSLog(@"++++++++++++++++++Humanities++++++++++++++++++");
    for (Student *std in arrayHumanities) {
        NSLog(@"%@", std);
    }
    NSLog(@"++++++++++++++++++Average++++++++++++++++++");
    for (Student *std in arrayAverage) {
        NSLog(@"%@", std);
    }

    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
