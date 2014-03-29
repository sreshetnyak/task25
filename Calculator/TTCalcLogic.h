//
//  TTCalcLogic.h
//  Calculator
//
//  Created by sergey on 3/28/14.
//  Copyright (c) 2014 sergey. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol TTCalcLogicDelegate;

@interface TTCalcLogic : NSObject

@property (strong,nonatomic) NSString *firstData;
@property (strong,nonatomic) NSString *secondData;
@property (strong,nonatomic) NSString *tempData;

@property (weak,nonatomic) id <TTCalcLogicDelegate> delegate;


- (void)plus;
- (void)minus;
- (void)divide;
- (void)multiply;
- (void)percent;
- (void)addData:(NSString *)data;
- (void)equals;
- (void)clear;

@end

@protocol TTCalcLogicDelegate <NSObject>

- (void)updateDisplayWithData:(NSString *)data;

@end
