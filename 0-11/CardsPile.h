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
#import "NumbersCard.h"

@interface CardsPile : NSObject

@property (nonatomic, strong) NSMutableArray *pile;

-(void)setPile;
-(void)sortPile;
-(NSInteger)find:(ColorType)color Cardsof: (int)points;

@end


@interface UserCardsPile : CardsPile

-(void)setPile;
-(void)addCardsof:(int)n PointsIn:(ColorType)color;
-(void)addJokerIn:(ColorType)color;


@end

@interface MainCardsPile : CardsPile

-(void)setPile;
-(void)removeCardOf:(int)n PointsIn:(ColorType)color;
-(void)removeJokerIn:(ColorType)color;

@end

#endif /* CardsPile_h */
