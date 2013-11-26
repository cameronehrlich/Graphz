//
//  GGVertex.m
//  Graphz
//
//  Created by Cameron Ehrlich on 11/24/13.
//  Copyright (c) 2013 Brian. All rights reserved.
//

#import "GGVertex.h"
#include <math.h>
#include <stdio.h>

@implementation GGVertex


-(void)connectVertexTo:(GGEdge *) edge
{
    if (!self.edges) {
        self.edges =[NSMutableSet new];
    }
    
    [self.edges addObject:edge];
}

-(void)setAngleWithBallNumber:(int)ballNumber withNumberOfVertices:(double) numVerticies
{
    double temAngle = 2*M_PI/numVerticies;
    self.angle = temAngle*ballNumber;}

@end
