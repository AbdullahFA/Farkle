//
//  ViewController.m
//  Farkle
//
//  Started and Created by Dennis Dixon and Abdullah AlMubarak on 5/21/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "ViewController.h"
#import "DieLabel.h"

@interface ViewController () <DieLabelDelegate>
@property (weak, nonatomic) IBOutlet DieLabel *myDieLabel1;
@property (weak, nonatomic) IBOutlet DieLabel *myDieLabel2;
@property (weak, nonatomic) IBOutlet DieLabel *myDieLabel3;
@property (weak, nonatomic) IBOutlet DieLabel *myDieLabel4;
@property (weak, nonatomic) IBOutlet DieLabel *myDieLabel5;
@property (weak, nonatomic) IBOutlet DieLabel *myDieLabel6;
@property (strong,nonatomic) NSMutableArray *dice;
@property (weak, nonatomic) IBOutlet UIButton *rollButton;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.myDieLabel1.delegate = self;
    self.myDieLabel2.delegate = self;
    self.myDieLabel3.delegate = self;
    self.myDieLabel4.delegate = self;
    self.myDieLabel5.delegate = self;
    self.myDieLabel6.delegate = self;
    self.dice = [[NSMutableArray alloc] init];
}


-(BOOL)loseTurnPoints
{
    if([self tallyScore] > 0)

{
    return NO;
}
    return YES;
}

-(NSInteger)tallyScore

     {
         // CALL Scoring Method
         return 0;
     }

- (IBAction)onRollButtonPressed:(id)sender
{

    if ([self.dice indexOfObject:self.myDieLabel1] == NSNotFound) [self.myDieLabel1 roll];
    if ([self.dice indexOfObject:self.myDieLabel2] == NSNotFound) [self.myDieLabel2 roll];
    if ([self.dice indexOfObject:self.myDieLabel3] == NSNotFound) [self.myDieLabel3 roll];
    if ([self.dice indexOfObject:self.myDieLabel4] == NSNotFound) [self.myDieLabel4 roll];
    if ([self.dice indexOfObject:self.myDieLabel5] == NSNotFound) [self.myDieLabel5 roll];
    if ([self.dice indexOfObject:self.myDieLabel6] == NSNotFound) [self.myDieLabel6 roll];
    if (![self loseTurnPoints])
    {
        self.rollButton.enabled = NO;
    }


}

- (void)didChooseDie:(id)dieLabel
{
    [self.dice addObject:dieLabel];
    
}



@end
