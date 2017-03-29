//
//  Player.h
//  0-11
//
//  Created by 刘彦超 on 2017/3/14.
//  Copyright © 2017年 joe.liu. All rights reserved.
//

#ifndef Player_h
#define Player_h

#import <Foundation/Foundation.h>
#import "CardsPile.h"
#import <CoreBluetooth/CoreBluetooth.h>

@interface Player : NSObject

@property NSInteger clearCount;

@property (nonatomic, strong) UserCardsPile* pPile;

-(void)initPlayerHand;

@end

#endif /* Player_h */
