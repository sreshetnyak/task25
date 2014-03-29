//
//  TTViewController.h
//  Calculator
//
//  Created by sergey on 3/27/14.
//  Copyright (c) 2014 sergey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TTCalcLogic.h"

@interface TTViewController : UIViewController <TTCalcLogicDelegate>

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *numpad;
@property (weak, nonatomic) IBOutlet UILabel *display;
@property (strong,nonatomic) TTCalcLogic *calcLogic;

@end
