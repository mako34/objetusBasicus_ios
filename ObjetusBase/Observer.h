//
//  Observer.h
//  ObjetusBase
//
//  Created by Manuel Betancurt on 21/11/12.
//  Copyright (c) 2012 Orchard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Observer : NSObject {
    
    NSString *_nombreObservado;
    
}

@property (nonatomic, retain) NSString *nombreObservado;

- (void) muestroElObservado;

@end
