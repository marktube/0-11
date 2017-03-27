//
//  Numbers.h
//  0-11
//
//  Created by joe.liu on 2017/3/13.
//  Copyright © 2017年 joe.liu. All rights reserved.
//

#ifndef Numbers_h
#define Numbers_h

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    WhiteCard,
    BlackCard,
} ColorType;

#define JOKER_CARD 12

@interface NumbersCard : NSObject 
{
    int points;
    ColorType color;
    bool isClear;
}

-(id)initWith:(ColorType)Color and:(int)Points;
- (NSComparisonResult)compare:(id)other;
-(bool)isCardClear;
-(void)setCard:(bool)ClearOrNot;
-(void)setJoker:(int)point;
-(int)getPoints;
-(ColorType)whatColor;

@end


#endif /* Numbers_h */
