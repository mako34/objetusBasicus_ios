//
//  HouseBlend.m
//  ObjetusBase
//
//  Created by Manuel Betancurt on 28/11/12.
//  Copyright (c) 2012 Orchard. All rights reserved.
//

#import "HouseBlend.h"

@implementation HouseBlend
@synthesize beverage = _beverage;

-(id)initWithHouseBlend :(Beverage*)theBeverage {
    self = [super init];
    if (self) {
        
        self.beverage = theBeverage;
    }
    
    return self;
}

- (void)HouseBlend {
    self.description = @"House Blend Coffee";
}

- (double)cost {
    return (self.beverage.cost + 0.89);
}



@end
