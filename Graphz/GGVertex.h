//
//  GGVertex.h
//  Graphz
//
//  Created by Cameron Ehrlich on 11/24/13.
//  Copyright (c) 2013 Brian. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "GGEdge.h"

@interface GGVertex : SKSpriteNode

@property (nonatomic, assign) double angle;

@property (nonatomic, strong) NSMutableSet *edges;

-(void)connectVertexTo:(GGEdge *) edge;

-(void)setAngleWithBallNumber:(int)ballNumber withNumberOfVertices:(double) numVerticies;

@end
