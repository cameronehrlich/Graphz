//
//  GGEdge.m
//  Graphz
//
//  Created by Cameron Ehrlich on 11/25/13.
//  Copyright (c) 2013 Brian. All rights reserved.
//

#import "GGEdge.h"
#import "GGVertex.h"

@implementation GGEdge

-(void)connectEdgeToVertexOne:(GGVertex *) vertOne andVertexTwo:(GGVertex *) vertTwo
{
    self.vertexOne = vertOne;
    
    self.vertexTwo = vertTwo;
}

@end
