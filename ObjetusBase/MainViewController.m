//
//  MainViewController.m
//  ObjetusBase
//
//  Created by Manuel on 15/11/12.
//  Copyright (c) 2012 Orchard. All rights reserved.
//

//Preguntas, cada vez q creo un objeto person esta alli?
//q pasa si le hago release, ya no existe?

#import "MainViewController.h"
#import "Person.h"
#import "Macho.h"

@interface MainViewController ()

@end

@implementation MainViewController

 

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    [self empiezaOBjetoPerson];
    [self empiezaObjetoPersonConData];
    
    //heredao
    [self empiezaMachoHeredaPersona];
}

- (void)empiezaOBjetoPerson
{
    Person *personObject = [[[Person alloc]init]autorelease];
    

    
    DLog(@"pinga a empezao con person :: %@", personObject);  

   
    DLog(@"pinga a empezao con person :: %@", personObject.name); //veamos si sirve despues de realease

 
    //testeo gette n setter
    
    //setter
    [personObject setNicePerson:NO];
    
    //getter
    DLog(@"ten tu person is nice > :: %d", [personObject isNicePerson]);
   
}


- (void)empiezaObjetoPersonConData
{
    Person *personObject = [[[Person alloc]initWithData:34 name:@"el inmortal" height:182]autorelease];
    
    DLog(@"pinga a empezao con person n data :: %@", personObject);  
    DLog(@"pinga a empezao con person n data :: %@", personObject.name);
    
    //llama rutina en objeto
    
    [personObject metodo1_noEntraNiSale];
    
    
   
}

//heredao
- (void)empiezaMachoHeredaPersona

{
    
    DLog(@"\n ");
    //An object inherits various instance variables and methods from its superclass. 
    
    Macho *machoObject = [[[Macho alloc]initWithData:33 name:@"macho Man" height:200]autorelease];
    
    [machoObject metodo1_noEntraNiSale];
    
    machoObject.varonil = YES;
    
     
    [machoObject resultoVaronil];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
