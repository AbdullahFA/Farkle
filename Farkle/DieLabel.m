//
//  DieLabel.m
//  Farkle
//
//  Started and Created by Dennis Dixon and Abdullah AlMubarak on 5/21/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "DieLabel.h"

@implementation DieLabel

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.text = @"1";
    }
    return self;
}


- (IBAction)onTapped:(id)tap
{
    self.backgroundColor = [UIColor yellowColor];
    [self.delegate didChooseDie:self];

}


- (void)roll

{
    int diceResult = arc4random_uniform(6)+1;
    self.text = [NSString stringWithFormat:@"%i", diceResult];
}

@end
