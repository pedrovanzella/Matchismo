//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Pedro Vanzella on 9/29/13.
//  Copyright (c) 2013 Purple People. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) PlayingCardDeck *deck;
@end

@implementation CardGameViewController

- (PlayingCardDeck *)deck
{
    if (!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flips updated to %d", self.flipCount);
}

- (IBAction)flipCard:(UIButton *)sender
{
    Card *card = nil;
    card = [self.deck drawRandomCard];
    
    NSLog(@"drew card %@", card.contents);
    [sender setTitle:card.contents forState:UIControlStateSelected];
    
    sender.selected = !sender.isSelected;
    self.flipCount++;
}

@end
