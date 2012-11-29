//
//  Whip.h
//  ObjetusBase
//
//  Created by Manuel Betancurt on 28/11/12.
//  Copyright (c) 2012 Orchard. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CondimentDecorators.h"
#import "Beverage.h"


@interface Whip : Beverage{
@private //ojo uso de private, para q sea pa q scope?
    Beverage *_beverage;
}

@property (nonatomic, retain) Beverage *beverage;

// - (double)cost;
-(id)initWithWhip :(Beverage*)theBeverage;

@end
