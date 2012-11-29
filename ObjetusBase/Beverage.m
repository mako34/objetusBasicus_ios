//
//  Beverage.m
//  ObjetusBase
//
//  Created by Manuel Betancurt on 28/11/12.
//  Copyright (c) 2012 Orchard. All rights reserved.
//

#import "Beverage.h"



@implementation Beverage

@synthesize description = _description;

- (id)init {
    self = [super init];
    if (self) {
         self.description = @"pinga Unknown Beverage";
    }
    return self;
}

- (NSString*)getDescription {
    ;
    return self.description;
}

- (double)cost {
    
    return 0;
}

@end
