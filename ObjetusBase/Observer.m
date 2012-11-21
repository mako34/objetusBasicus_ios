//
//  Observer.m
//  ObjetusBase
//
//  Created by Manuel Betancurt on 21/11/12.
//  Copyright (c) 2012 Orchard. All rights reserved.
//

#import "Observer.h"

@interface  Observer()
@property (nonatomic, retain)NSString *apellidoObservado;
@end

@implementation Observer


@synthesize nombreObservado = _nombreObservado;


- (id)init
{
    self = [super init];
    
    if (self) {
        DLog(@"\ninitiao");
     
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(receiveTestNotification:)
                                                     name:@"Event"
                                                   object:nil];
    
    }
    
    return self;
}


- (void) receiveTestNotification:(NSNotification *) notification
{
    // [notification name] should always be @"TestNotification"
    // unless you use this method for observation of other notifications
    // as well.
    
    //if ([[notification name] isEqualToString:@"TestNotification"])

    DLog(@"\nnotification name:: %@",notification.name); //ojo!, veo nombre de la notificacion!

    DLog (@"\nSuccessfully received the test notification! :: %@", notification.object); //mando objeto en la notificacion!
}
 

- (void) muestroElObservado {
    
    DLog(@"\nnombre : %@ \napellido : %@",self.nombreObservado, self.apellidoObservado);
}


@end
