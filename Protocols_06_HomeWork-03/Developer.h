//
//  Developer.h
//  Protocols_06_HomeWork-03
//
//  Created by Slava on 19.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HeartAttack.h"

@interface Developer : NSObject <HeartAttack>

@property (strong, nonatomic) NSString *name;       // имя пациента
@property (strong, nonatomic) NSString *symptoms;        // симптомы
@property (assign, nonatomic) NSInteger yourAge;   // ваш возраст

- (BOOL) isAssistanceRequired;      // требуется ли помощь
- (void) takePill;      // примите таблетку
- (BOOL) isOk;      // стало лучше

- (void) hospitalization;       // госпитализировать
- (BOOL) isToCallTheFamaily;  //позвонить семье


@end
