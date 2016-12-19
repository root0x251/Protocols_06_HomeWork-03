//
//  AppDelegate.m
//  Protocols_06_HomeWork-03
//
//  Created by Slava on 19.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "AppDelegate.h"
#import "HeartAttack.h"
#import "ResonProtocol.h"
#import "Developer.h"
#import "Student.h"
#import "SuperMan.h"



@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    Developer *dev1 = [[Developer alloc]init];
    Developer *dev2 = [[Developer alloc]init];
    Developer *dev3 = [[Developer alloc]init];
    
    dev1.name = @"Aleks";
    dev1.symptoms = @"боль в груди";
    dev1.yourAge = 23;
    
    dev2.name = @"Aik";
    dev2.symptoms = @"бежал и начал задыхаться";
    dev2.yourAge = 53;
    
    dev3.name = @"Rik";
    dev3.symptoms = @"холодный пот на лице";
    dev3.yourAge = 43;
    
    Student *stud1 = [[Student alloc]init];
    Student *stud2 = [[Student alloc]init];
    
    stud1.name = @"Morti";
    stud1.symptoms = @"начал задыхаться";

    stud2.name = @"Jeki";
    stud2.symptoms = @"пот на лице";
    
    SuperMan *superMan = [[SuperMan alloc]init];
    
    superMan.name = @"Klark";
    superMan.symptoms = @"мне просто скучно";


    NSArray *array = @[dev1, dev2, dev3, stud1, stud2, superMan];
    for (id <HeartAttack, ResonProtocol> obj in array) {
        if ([obj conformsToProtocol:@protocol(HeartAttack)]) {
            
            NSLog(@"Ваше имя? -%@", obj.name);
            
            NSLog(@"Ваши симптомы? -%@", obj.symptoms);
            
            if ([obj respondsToSelector: @selector(yourAge)]) {
                NSLog(@"Ваш возраст? -%d", obj.yourAge);
            }
            if ([obj isAssistanceRequired]) {
                [obj takePill];
                if (![obj isOk]) {
                    [obj hospitalization];
                    if ([obj respondsToSelector:@selector(isToCallTheFamaily)]) {
                        [obj isToCallTheFamaily];
                    }
                }
            }
            if ([obj respondsToSelector:@selector(protocolResone)]) {
                [obj protocolResone];   // если объект имеет selectro protocolResone, в моем случае он еще из другого протокола, то мы его выполним
            }
            
        } else {
            NSLog(@"скучающий SuperMan");
        }
        NSLog(@"==============");
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
