//
//  Condimentdecorator.h
//  ObjetusBase
//
//  Created by Manuel Betancurt on 28/11/12.
//  Copyright (c) 2012 Orchard. All rights reserved.
//
//
//  Abstract component class >>> concrete components
//                           >>Decorator
//                              >>Concrete decorator

//Decorator

#import <Foundation/Foundation.h>
#import "Beverage.h"

@interface CondimentDecorators : Beverage {
    
}

- (NSString*)getDescription;

@end
