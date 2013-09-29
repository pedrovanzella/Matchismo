//
//  PlayingCard.h
//  Matchismo
//
//  Created by Pedro Vanzella on 9/29/13.
//  Copyright (c) 2013 Purple People. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
