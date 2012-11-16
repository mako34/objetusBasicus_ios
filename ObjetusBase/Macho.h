//
//  Macho.h
//  ObjetusBase
//
//  Created by Manuel on 16/11/12.
//  Copyright (c) 2012 Orchard. All rights reserved.
//

// el inheritado

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Macho : Person {
    
    BOOL _varonil;
}
@property (nonatomic, assign)BOOL varonil;

- (void)resultoVaronil;

@end
