//
//  Student.m
//  Protocols_06_HomeWork-03
//
//  Created by Slava on 19.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "Student.h"

@implementation Student



//@property (assign, nonatomic) NSInteger yourAge;   // ваш возраст

- (BOOL) isAssistanceRequired{      // требуется ли помощь
    BOOL required = arc4random() % 2;
    NSLog(@"Помощь нужна?");
    NSLog(@"%@", required? @"да, нужна": @"нет, спасибо, проверка связи");
    return required;
}
- (void) takePill{
    NSLog(@"Выпейте таблетку и все пройдет");
}
- (BOOL) isOk{
    BOOL norm = arc4random() % 2;
    NSLog(@"Стало лучше?");
    NSLog(@"%@", norm? @"да": @"нет");
    return norm;
}

- (void) hospitalization{
    NSLog(@"придется госпитализировать");
}


//- (BOOL) isToCallTheFamaily;  //позвонить семье

// ResonProtocol.h
- (void) protocolResone{
    NSLog(@"Я ResonProtocol.h");
}
@end
