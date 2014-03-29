//
//  TTViewController.m
//  Calculator
//
//  Created by sergey on 3/27/14.
//  Copyright (c) 2014 sergey. All rights reserved.
//

#import "TTViewController.h"

@interface TTViewController ()

@end

@implementation TTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    TTCalcLogic *logic = [[TTCalcLogic alloc]init];
    
    self.calcLogic = logic;
    self.calcLogic.delegate = self;
    
    for (UIButton *tmpBtn in self.numpad) {
        [tmpBtn addTarget:self action:@selector(numPadPress:) forControlEvents:UIControlEventTouchUpInside];
    }
    
}

- (void)updateDisplayWithData:(NSString *)data {
    
    self.display.text = data;
}

- (void)numPadPress:(id)sender {
    
    UIButton *btn = sender;
    
    switch (btn.tag) {
        case 1:
            [self.calcLogic addData:btn.currentTitle];
            break;
        case 10:
            [self.calcLogic addData:btn.currentTitle];
            break;
        case 11:
            [self.calcLogic equals];
            break;
        case 12:
            [self.calcLogic plus];
            break;
        case 13:
            [self.calcLogic minus];
            break;
        case 14:
            [self.calcLogic multiply];
            break;
        case 15:
            [self.calcLogic divide];
            break;
        case 16:
            NSLog(@"%%");
            break;
        case 17:
            [self.calcLogic clear];
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
