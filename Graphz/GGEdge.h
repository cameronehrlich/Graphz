//
//  GGEdge.h
//  Graphz
//
//  Created by Cameron Ehrlich on 11/25/13.
//  Copyright (c) 2013 Brian. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@class GGVertex;

@interface GGEdge : SKSpriteNode

@property (nonatomic, strong) GGVertex *vertexOne;
@property (nonatomic, strong) GGVertex *vertexTwo;

-(void)connectEdgeToVertexOne:(GGVertex *) vertOne andVertexTwo:(GGVertex *) vertTwo;

@end
