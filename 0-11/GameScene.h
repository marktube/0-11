//
//  GameScene.h
//  0-11
//
//  Created by joe.liu on 2017/3/13.
//  Copyright © 2017年 joe.liu. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import <GameplayKit/GameplayKit.h>

@interface GameScene : SKScene

@property (nonatomic) NSMutableArray<GKEntity *> *entities;
@property (nonatomic) NSMutableDictionary<NSString*, GKGraph *> *graphs;

@end
