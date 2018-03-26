//
//  Deck.m
//  CardGame
//
//  Created by Zac on 3/9/18.
//  Copyright © 2018 Zac. All rights reserved.
//

#import "Deck.h"

@interface Deck()
// Mutable array, NSArray is immutable
@property (strong, nonatomic) NSMutableArray *cards;  // of Card
@end

@implementation Deck

// Getter method
- (NSMutableArray *)cards
{
    // Allocate a pointer and point to the property array in heap
    // Without this step, the cards pointer points to nil
    if (!_cards)
        _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (void) addCard:(Card *) card atTop:(BOOL) atTop
{
    if (atTop)
    {   // index 0 is the top of the array
        [self.cards insertObject:card atIndex:0];
    }
    else
    {   // append to the end of array
        [self.cards addObject:card];
    }
}
- (void) addCard:(Card *) card
{
    [self addCard:card atTop:NO];
}

- (Card *) drawRandomCard
{
    Card* randomCard = nil;
    // Avoid exception when cards is nil
    if ([self.cards count])
    {
        unsigned index = arc4random() % [self.cards count];

        randomCard = self.cards[index];
    //    randomCard = [self.cards objectAtIndex:index]; // equals, this is a message sent
        [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
}

@end
