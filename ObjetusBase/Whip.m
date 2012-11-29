//
//  Whip.m
//  ObjetusBase
//
//  Created by Manuel Betancurt on 28/11/12.
//  Copyright (c) 2012 Orchard. All rights reserved.
//

#import "Whip.h"

@implementation Whip
@synthesize beverage = _beverage;

-(id)initWithWhip:(Beverage *)theBeverage{
    self = [super init];
    if (self) {
        self.beverage = theBeverage; //wow q brutalidad, es muy
    }
    return self;
}

- (NSString *) getDescription {
    
    return [NSString stringWithFormat:@"%@, con Mocha",self.beverage.getDescription];
}

- (double)cost {
    return .10 + self.beverage.cost;
}

@end
