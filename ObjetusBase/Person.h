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
    
    //ensayo esta para ver q hacen los getters n setters
    
    BOOL _pasaorNice;
    
 }
 
@property (nonatomic, assign)int age; //por que no le gusta retain?
@property (nonatomic, retain)NSString *name;
@property (nonatomic, assign)int height; //por que no le gusta retain?

@property (nonatomic, assign)BOOL pasaorNice; //hecho por ahora con pasaor nice, pero ojo no es para produccion, 

@property (nonatomic, getter = isNicePerson, setter = setNicePerson:) BOOL nicePerson;

//You can specify the getter only, the setter only, or both.

//class methods

//instance method, -(id)bla
-(id)initWithData:(int)age name:(NSString*)name height:(int)height;

-(void)metodo1_noEntraNiSale;

@end
 