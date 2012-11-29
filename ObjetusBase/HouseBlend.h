//
//  HouseBlend.h
//  ObjetusBase
//
//  Created by Manuel Betancurt on 28/11/12.
//  Copyright (c) 2012 Orchard. All rights reserved.
//
//  Abstract component class >>> concrete components
//                           >>Decorator
//                              >>Concrete decorator

//concrete component  

#import <Foundation/Foundation.h>
#import "Beverage.h"

@interface HouseBlend : Beverage {
    @private //ojo uso de private, para q sea pa q scope?
    Beverage *_beverage;
}

@property (nonatomic, retain) Beverage *beverage;

- (void)HouseBlend;
- (double)cost;
-(id)initWithHouseBlend :(Beverage*)theBeverage;

@end
