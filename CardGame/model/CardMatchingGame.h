//
//  NSObject+CardMatchingGame.h
//  CardGame
//
//  Created by Zac on 3/27/18.
//  Copyright © 2018 Zac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject
// Score can be negative
// designated initializer
- (instancetype)initWithCardCount:(NSUInteger)count
                        usingDeck:(Deck *)deck;

- (void)chooseCardAtIndex:(NSUInteger)index;

- (Card *)cardAtIndex:(NSUInteger)index;

// readonly -> on setter for public
@property (nonatomic, readonly) NSUInteger score;

@end
