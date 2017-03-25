//
//  CardsPile.h
//  0-11
//
//  Created by 刘彦超 on 2017/3/15.
//  Copyright © 2017年 joe.liu. All rights reserved.
//

#ifndef CardsPile_h
#define CardsPile_h

#import <Foundation/Foundation.h>

@interface CardsPile : NSObject
{
    NSMutableArray *pile;
}

-(void)setPile;
-(void)removeCardOf:(int)n PointsIn:(ColorType)color;
-(void)addCardsof:(int)n PointsIn:(ColorType)color;
-(void)addJokerIn:(ColorType)color;
-(void)removeJokerIn:(ColorType)color;

@end


@interface UserCardsPile : CardsPile

-(void)setPile;

@end

@interface MainCardsPile : CardsPile

-(void)setPile;

@end

#endif /* CardsPile_h */
