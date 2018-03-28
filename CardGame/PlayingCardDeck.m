//
//  PlayingCardDeck.m
//  CardGame
//
//  Created by Zac on 3/26/18.
//  Copyright © 2018 Zac. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

// Do Alloc INSIDE init[]
// [[NSMutableArray alloc] init]
// init always return self
- (instancetype) init
{
    self = [super init];
    
    if (self)
    {
        for (NSString *suit in [PlayingCard validSuits])
        {
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++)
            {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard: card];
            }
        }
    }
    return self;
}

@end
