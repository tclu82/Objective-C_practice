//
//  Card.h
//  CardGame
//
//  Created by Zac on 3/9/18.
//  Copyright © 2018 Zac. All rights reserved.
//

//#import <Foundation/Foundation.h>
@import Foundation;


@interface Card: NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int) match: (NSArray *) otherCards;






@end
