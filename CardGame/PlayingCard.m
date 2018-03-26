//
//  Card+PlayingCard.m
//  CardGame
//
//  Created by Zac on 3/9/18.
//  Copyright © 2018 Zac. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *) contents
{
    NSArray* rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString: self.suit];
}

@synthesize suit = _suit;  // Because we provicde setter AND getter

+ (NSArray *) validSuits
{
    return @[@"♥", @"♦", @"♠", @"♣"];
}

- (void) setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject: suit])
    {
        _suit = suit;
    }
}

- (NSString *) suit
{
    return _suit ? _suit : @"?";
}

+ (NSArray *) rankStrings
{
    //    // %d for integer, %@ for object
    //    return [NSString stringWithFormat:@"%d%@", self.rank, self.suit];
    
    // 0 is unset
    // @"A", @ will make a String object of "A"
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger) maxRank { return [[self rankStrings] count] -1; }

- (void) setRank: (NSUInteger) rank
{
    if (rank <= [PlayingCard maxRank])
    {
        _rank = rank;
    }
}

@end