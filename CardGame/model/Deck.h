//
//  Deck.h
//  CardGame
//
//  Created by Zac on 3/9/18.
//  Copyright © 2018 Zac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck: NSObject

- (void)addCard:(Card *)card atTop: (BOOL) atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;

@end
