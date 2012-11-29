//
//  Beverage.h
//  ObjetusBase
//
//  Created by Manuel Betancurt on 28/11/12.
//  Copyright (c) 2012 Orchard. All rights reserved.
//
//  Abstract component class >>> concrete components
//                           >>Decorator
//                              >>Concrete decorator

//abstract component class



#import <Foundation/Foundation.h>


@interface Beverage : NSObject {
NSString *_description;
    
}

@property (nonatomic, retain) NSString *description;


- (NSString*)getDescription;
- (double)cost;

@end
