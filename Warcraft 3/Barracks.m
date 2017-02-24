//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"

@implementation Barracks

- (instancetype)init
{
    if (self = [super init])
    {
        self.gold = 1000;
        self.food = 80;
    }
    return self;
}

-(Footman *)trainFootman
{
    if ([self canTrainFootman])
    {
        self.gold -= 135;
        self.food -= 2;
        
        return [Footman new];
    }
    
    return nil;
}

- (BOOL)canTrainFootman
{
    if (self.gold > 134 && self.food > 1)
    {
        return YES;
    }
    return NO;
}

- (BOOL)canTrainPeasant
{
    if (self.gold > 89 && self.food > 4)
    {
        return YES;
    }
    return NO;
}

- (Peasant *)trainPeasant
{
    if ([self canTrainPeasant])
    {
        self.gold -= 90;
        self.food -= 5;
        
        return [Peasant new];
    }
    
    return nil;
}

@end
