//
//  Macho.m
//  ObjetusBase
//
//  Created by Manuel on 16/11/12.
//  Copyright (c) 2012 Orchard. All rights reserved.
//


//que es subclassing : es esto,

 
#import "Macho.h"

@implementation Macho
@synthesize varonil = _varonil;

-(id)init {
    self = [super init];
    
    if (self) {
        DLog(@"initi");
    }
    
    return self;
}


- (id)initWithData:(int)age name:(NSString *)name height:(int)height
{
    self = [super init];
    
    if (self) {
        DLog(@"initi con data");
    }
    return self;
}

// extending superclass
- (void)resultoVaronil {
    
    //self.nacionalidad = @"veneko"; //es esto override? no lo creo es mas para metodos!
   
    
     
    DLog(@"ha resultao varonil :: %d", self.varonil);
 
}


 
 
//override inherited method



@end
