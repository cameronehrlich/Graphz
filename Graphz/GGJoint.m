//
//  GGJoint.m
//  Graphz
//
//  Created by Cameron Ehrlich on 11/25/13.
//  Copyright (c) 2013 Brian. All rights reserved.
//

#import "GGJoint.h"

@implementation GGJoint

-(void) setNeighbors:(NSArray *)neighbors {
    self.neighbors = neighbors;
}

-(void) setLength:(NSInteger)length {
    self.length = length;
}

-(void) currentLength:(NSInteger)currLength {
    
    
}

-(BOOL) pastLength {
    return self.pastLength;
}




@end
