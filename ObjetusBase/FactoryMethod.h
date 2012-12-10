//
//  FactoryMethod.h
//  ObjetusBase
//
//  Created by Manuel Betancurt on 10/12/12.
//  Copyright (c) 2012 Orchard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FactoryMethod : NSObject

+ (NSString *)transformString:(NSString *)string; //exposed factory method
+ (UIView *)myView;

@end
