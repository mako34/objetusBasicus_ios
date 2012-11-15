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
}

- (void)empiezaOBjetoPerson
{
    Person *personObject = [[Person alloc]init];
    

    
    DLog(@"pinga a empezao con person :: %@", personObject);  

    [personObject release];
    DLog(@"pinga a empezao con person :: %@", personObject.name); //veamos si sirve despues de realease

}


- (void)empiezaObjetoPersonConData
{
    Person *personObject = [[[Person alloc]initWithData:34 name:@"el inmortal" height:182]autorelease];
    
    DLog(@"pinga a empezao con person n data :: %@", personObject);  
    DLog(@"pinga a empezao con person n data :: %@", personObject.name);
    
    //llama rutina en objeto
    [personObject metodo1_noEntraNiSale];
    
    
   
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
