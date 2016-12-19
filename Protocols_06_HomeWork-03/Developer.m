//
//  Developer.m
//  Protocols_06_HomeWork-03
//
//  Created by Slava on 19.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "Developer.h"

@implementation Developer

- (BOOL) isAssistanceRequired{
    BOOL isNeedHelp = arc4random() % 2;
    NSLog(@"Помощь требуется? %@", isNeedHelp? @"Да мне очень плохо" : @"Нет мне стало лучше");
    return isNeedHelp;
}
- (void) takePill{
    NSLog(@"%@, выпeйте таблетку", self.name);
}
- (BOOL) isOk{
    BOOL isAllWell = arc4random() % 2;
    NSLog(@"%@, ну что, стало лучше?  %@", self.name, isAllWell? @"Да, спасибо": @"Нет стало еще хуже");
    return isAllWell;
}
- (void) hospitalization{
    NSLog(@"Придется поехать в больнциу");
}
- (BOOL) isToCallTheFamaily{
    BOOL isCallFamaily = arc4random() % 2;
    NSLog(@"Позвонить семье? %@", isCallFamaily? @"да": @"нет");
    return isCallFamaily;
}


@end
