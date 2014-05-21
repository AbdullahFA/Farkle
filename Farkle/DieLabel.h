//
//  DieLabel.h
//  Farkle
//
//  Started and Created by Dennis Dixon and Abdullah AlMubarak on 5/21/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DieLabelDelegate <NSObject>

-(void)didChooseDie:(id)dieLabel;

@end

@interface DieLabel : UILabel

@property (strong,nonatomic) id<DieLabelDelegate> delegate;

- (void)roll;

@end
