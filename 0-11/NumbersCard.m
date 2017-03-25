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

-(id)init{
    self = [super init];
    return self;
}

-(bool)isCardClear{
    return isClear;
}

-(void)setCard:(bool)ClearOrNot{
    isClear = true;
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
