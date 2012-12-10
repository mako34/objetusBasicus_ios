//
//  FactoryMethod.m
//  ObjetusBase
//
//  Created by Manuel Betancurt on 10/12/12.
//  Copyright (c) 2012 Orchard. All rights reserved.
//

#import "FactoryMethod.h"

@interface FactoryMethod()
+ (id) privateMethod1;
@end

@implementation FactoryMethod

+ (id)foo
{
    return [[[self alloc] init] autorelease];
}

+ (NSString *)transformString:(NSString *)string
{
    NSString *oqueDice = [NSString stringWithFormat:@"%@ %@", [self privateMethod1],[string uppercaseString]];

    return oqueDice;
}

+ (id) privateMethod1
{
    return @"si"; //solo para la clase
}

+ (UIView*)myView
{
    UIView *myViewInstance = [[UIView alloc]initWithFrame:CGRectMake(600, 200, 90, 90)];
    myViewInstance.backgroundColor = [UIColor greenColor];
    return myViewInstance;
    
    //return [[UIView alloc]initWithFrame:CGRectMake(600, 200, 90, 90)];

}

@end
