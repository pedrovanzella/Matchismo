//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Pedro Vanzella on 9/29/13.
//  Copyright (c) 2013 Purple People. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()

@end

@implementation CardGameViewController

- (IBAction)flipCard:(UIButton *)sender
{
    sender.selected = !sender.isSelected;
}

@end
