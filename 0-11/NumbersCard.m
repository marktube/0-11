//
//  Numbers.m
//  0-11
//
//  Created by joe.liu on 2017/3/13.
//  Copyright © 2017年 joe.liu. All rights reserved.
//

#import "NumbersCard.h"

@interface NumbersCard ()

@end

@implementation NumbersCard

-(id)initWith:(ColorType)Color and:(int)Points{
    if(self = [super init]){
        isClear = false;
        points = Points;
        color = Color;
        return self;
    }else
        return nil;
}

- (NSComparisonResult)compare:(id)other
{
    if (points < [other getPoints]) {
        return NSOrderedAscending;
    }else if(points > [other getPoints]){
        return NSOrderedDescending;
    }else{
        if (color == [other whatColor])
            return NSOrderedSame;
        else if (color == BlackCard)
            return NSOrderedAscending;
        else
            return NSOrderedDescending;
    }
}

-(bool)isCardClear{
    return isClear;
}

-(void)setCard:(bool)isClearOrNot{
    isClear = isClearOrNot;
}

-(void)setJoker:(int)point{
    points = point;
}

-(int)getPoints{
    return points;
}

-(ColorType)whatColor{
    return color;
}

@end
