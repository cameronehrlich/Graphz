//
//  GGJoint.h
//  Graphz
//
//  Created by Cameron Ehrlich on 11/25/13.
//  Copyright (c) 2013 Brian. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface GGJoint : SKSpriteNode

@property (nonatomic, assign) NSInteger length;
@property (nonatomic, assign) NSInteger currentLength;
@property (nonatomic, strong) NSArray* neighbors;
@property (nonatomic, assign) BOOL pastLength;

-(void) setLength:(NSInteger)length;
-(void) currentLength:(NSInteger) currLength;
-(void) setNeighbors:(NSArray *)neighbors;
-(BOOL) pastLength;

@end
