//
//  Card+PlayingCard.h
//  CardGame
//
//  Created by Zac on 3/9/18.
//  Copyright © 2018 Zac. All rights reserved.
//

#import "Card.h"

@interface PlayingCard: Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

// + is a Class metnod, not instance.
// Since it's a Class method, instance variables can't be used
//
// + is used in 2 things
// 1. Creating things like Stirng of format
// 2. Utility things like return constant
+ (NSArray *) validSuits;

+ (NSUInteger) maxRank;

@end
