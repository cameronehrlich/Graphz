//
//  GGMyScene.m
//  Graphz
//
//  Created by Cameron Ehrlich on 11/24/13.
//  Copyright (c) 2013 Brian. All rights reserved.
//

#import "GGMyScene.h"
#import "GGVertex.h"

#define NUMBER_OF_VERTICIES 6

@implementation GGMyScene

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [UIColor whiteColor];
        
        self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
        [self.physicsWorld setGravity:CGVectorMake(0, 0)];
        
        [self setup];
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
}

-(void)setup
{
    
    if (!self.verticies || !self.edges) {
        self.verticies = [NSMutableArray new];
        self.edges = [NSMutableArray new];
    }
    
    CGSize spriteSize = CGSizeMake(30, 30);
    CGPoint centerPoint = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
    
    for (int i = 0; i < NUMBER_OF_VERTICIES; i++)
    {
        GGVertex *sprite = [GGVertex spriteNodeWithColor:[self getRandomColor] size:spriteSize];
        
        [sprite setAngleWithBallNumber:i withNumberOfVertices:NUMBER_OF_VERTICIES];
        [sprite setPosition:centerPoint];
        sprite.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:spriteSize];
        sprite.physicsBody.dynamic = YES;
        
        //            [sprite.physicsBody setVelocity:CGVectorMake(-1*sinf(sprite.angle), cosf(sprite.angle))];
        //            [sprite.physicsBody setAngularVelocity:sprite.angle];
        
        [self.verticies addObject:sprite];
        [self addChild:sprite];
        [self.verticies addObject:[[GGVertex alloc] init]];
        
        
        
        
        
        // Create NUM_OF... new edges
        [self.edges addObject:[[GGEdge alloc] init]];
    }
    
    
    
    
    
    
    
    for (GGEdge *edge in self.edges)
    {
        // Connect edges and vertecies
        for (GGVertex *outerVertex in self.verticies)
        {
            for (GGVertex *innerVertex in self.verticies)
            {
                // set properties of each edge
                [edge connectEdgeToVertexOne:outerVertex andVertexTwo:innerVertex];
                
                [outerVertex connectVertexTo:edge];
                [innerVertex connectVertexTo:edge];
            }
        }
    }
    
    
}

-(void) setupJoints {
    NSDictionary* joints;
    joints = @{};
}

-(UIColor *) getRandomColor
{
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
    return color;
}

-(void) move
{
#define MULTIPLIER 1
    for (GGVertex *vertex in self.verticies) {
        
        SKAction *action = [SKAction moveByX:-sinf(vertex.angle) y:cosf(vertex.angle) duration:0.3];
        
        [vertex runAction:action];
        
    }
}

-(void)update:(CFTimeInterval)currentTime {
    [self move];
}

@end
