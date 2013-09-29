//
//  Card.h
//  Matchismo
//
//  Created by Pedro Vanzella on 9/29/13.
//  Copyright (c) 2013 Purple People. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic)NSString *contents;
@property (nonatomic, getter=isFaceUp)BOOL faceUp;

- (int)match:(NSArray *)otherCards;

@end
