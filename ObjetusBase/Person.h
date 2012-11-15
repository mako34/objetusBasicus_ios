//
//  Objectus1.h
//  ObjetusBase
//
//  Created by Manuel on 15/11/12.
//  Copyright (c) 2012 Orchard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

{
    //instance variables
    int _age;
    NSString *_name;
    int _height;
    
 }

@property (nonatomic, assign)int age; //por que no le gusta retain?
@property (nonatomic, retain)NSString *name;
@property (nonatomic, assign)int height; //por que no le gusta retain?

//class methods

//instance method, -(id)bla
-(id)initWithData:(int)age name:(NSString*)name height:(int)height;

-(void)metodo1_noEntraNiSale;

@end
