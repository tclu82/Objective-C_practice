//
//  Card.m
//  CardGame
//
//  Created by Zac on 3/9/18.
//  Copyright © 2018 Zac. All rights reserved.
//

#import "Card.h"

@interface Card()

@end

@implementation Card

@synthesize contents = _contents;

//-(NSString *)conntents
//{
//    return _contents;
//}
//
//-(void) setContents:(NSString *)contents
//{
//    _contents = contents;
//}

- (int) match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards)
    {
        if ([card.contents isEqualToString:self.contents])
        {
            score = 1;
        }
    }
    return score;
}

@end
