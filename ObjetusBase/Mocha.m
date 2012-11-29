//
//  Mocha.m
//  ObjetusBase
//
//  Created by Manuel Betancurt on 28/11/12.
//  Copyright (c) 2012 Orchard. All rights reserved.
//

#import "Mocha.h"

@interface  Mocha()
@end

@implementation Mocha
@synthesize beverage = _beverage;

-(id)initWithMocha:(Beverage*)beverage{
    self = [super init];
    if (self) {
        self.beverage = beverage; //wow q brutalidad, es muy 
    }
    return self;
}

- (NSString *) getDescription {
    
    return [NSString stringWithFormat:@"%@, con Mocha",self.beverage.getDescription];
}

- (double)cost {
    return .20 + self.beverage.cost;
}

@end
