//
//  Objectus1.m
//  ObjetusBase
//
//  Created by Manuel on 15/11/12.
//  Copyright (c) 2012 Orchard. All rights reserved.
//

//TODO:: Como se llama metodos q son accesables desde afuera, solo desde el objeto? y vars?


#import "Person.h"


@interface Person()
-(void)metodo2_noEntraNiSale; // ojo definido aqui en interface paque? no es accesable desde afuera!

@property (nonatomic, retain)NSString *deRapidez; //no accesable desde afuera del objeto, esta bien si lo uso nomas aqui!

@end

@implementation Person

@synthesize age = _age;
@synthesize name = _name;
@synthesize height = _height;
 
-(id)init
{
    self = [super init];
    
    if (self) {
        
        
        self.age = 0;
        self.name = @"MK";
        self.height = 0;
        

    }
    
    return self;
}

-(id)initWithData:(int)age name:(NSString*)name height:(int)height
{
    self = [super init];
    
    if (self) {
        
        
        self.age = age;
        self.name = name;
        self.height = height;
        
 
        
        
        
    }
    
    return self;
}


-(void)metodo1_noEntraNiSale {
    NSLog(@"nombre de data creada :: %@", self.name);
}

// no declarado en interface .h, no es accesable desde fuera del objeto
-(void)metodo2_noEntraNiSale {
    NSLog(@"nombre de data creada :: %@", self.name);
}

@end
