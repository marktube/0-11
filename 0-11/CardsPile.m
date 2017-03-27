//
//  CardsPile.m
//  0-11
//
//  Created by 刘彦超 on 2017/3/15.
//  Copyright © 2017年 joe.liu. All rights reserved.
//

#import "NumbersCard.h"
#import "CardsPile.h"

@interface CardsPile ()

@end

@implementation CardsPile

-(void)setPile{
    if (_pile == nil) {
        _pile = [[NSMutableArray alloc] init];
    }
}

-(void)sortPile{
    [_pile sortUsingComparator:^(id c1, id c2){
        return [c1 compare:c2];
    }];
}

-(NSInteger)find:(ColorType)color Cardsof:(int)points{
    NumbersCard *card = [[NumbersCard alloc]initWith:color and:points];
    NSRange searchRange = NSMakeRange(0, [_pile count]);
    NSInteger foundIndex = [_pile indexOfObject:card inSortedRange:searchRange options:NSBinarySearchingFirstEqual usingComparator:^(id c1, id c2){
        return [c1 compare:c2];
    }];
    return foundIndex;
}

@end

@implementation UserCardsPile

-(void)setPile{
    [super setPile];
}

-(void)addCardsof:(int)n PointsIn:(ColorType)color{
    NumbersCard *Joker = [[NumbersCard alloc]initWith:color and:n];
    [super.pile addObject:Joker];
}

-(void)addJokerIn:(ColorType)color{
    NumbersCard *Joker = [[NumbersCard alloc]initWith:color and:JOKER_CARD];
    [super.pile addObject:Joker];
}

@end

@implementation MainCardsPile

-(void)setPile{
    [super setPile];
    for (int i=0; i<12; i++) {
        NumbersCard* cd_w=[[NumbersCard alloc]initWith:BlackCard and:i];
        NumbersCard* cd_b=[[NumbersCard alloc]initWith:WhiteCard and:i];
        [super.pile addObject:cd_w];
        [super.pile addObject:cd_b];
    }
    NumbersCard *joker_w=[[NumbersCard alloc]initWith:BlackCard and:JOKER_CARD];
    NumbersCard *joker_b=[[NumbersCard alloc]initWith:WhiteCard and:JOKER_CARD];
    [super.pile addObject:joker_b];
    [super.pile addObject:joker_w];
}

-(void)removeCardOf:(int)n PointsIn:(ColorType)color{
    NSInteger index = [self find:color Cardsof:n];
    if (index == NSNotFound) {
        NSLog(@"can not find!");
        return;
    }
    [super.pile removeObjectAtIndex:index];
}

-(void)removeJokerIn:(ColorType)color{
    NSInteger index = [self find:color Cardsof:JOKER_CARD];
    if (index == NSNotFound) {
        NSLog(@"can not find!");
        return;
    }
    [super.pile removeObjectAtIndex:index];
}

@end
