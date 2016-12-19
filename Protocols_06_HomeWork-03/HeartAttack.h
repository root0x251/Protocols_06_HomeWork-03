//
//  HeartAttack.h
//  Protocols_06_HomeWork-03
//
//  Created by Slava on 19.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>

// сердечный приступ

@protocol HeartAttack <NSObject>

@required
@property (strong, nonatomic) NSString *name;       // имя пациента
@property (strong, nonatomic) NSString *symptoms;        // симптомы

- (BOOL) isAssistanceRequired;      // требуется ли помощь
- (void) takePill;                  // примите таблеточку
- (BOOL) isOk;                      // полегчало
- (void) hospitalization;           // госпитализыция

@optional
@property (assign, nonatomic) NSInteger yourAge;   // ваш возраст
- (BOOL) isToCallTheFamaily;  //позвонить семье

@end
