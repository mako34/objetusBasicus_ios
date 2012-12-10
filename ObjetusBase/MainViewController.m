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

//patterns
#import "Observer.h"
#import "Beverage.h" //Decorator
#import "HouseBlend.h"
#import "Mocha.h"
#import "Whip.h"

#import "FactoryMethod.h"

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
    
    [self initUI];
    
    //PATTERNS
    
    //initio observer, veo si cambia en RunTime?
    
    Observer *observerObj = [[Observer alloc]init];
    [observerObj muestroElObservado];
    
    //ojo, no boto el objeto! una vez creado queda en memo!
    //autorelease caga la vaina! duhh
    //objetos existen en runTime! duh
    
    [self decorator];

    //Factory Method, o convenience method
    [self factoryMethod];
    
}

- (void)decorator
{
    Beverage *baseBeverage = [[Beverage alloc] init];
    NSLog(@"base Beverage:: %@ ; for $%.2f", baseBeverage.description, baseBeverage.cost);
    
    Beverage *houseBlend = [[HouseBlend alloc]initWithHouseBlend:baseBeverage];
    
    Beverage *order2 = [[Mocha alloc]initWithMocha:houseBlend];
    NSLog(@"\n 2! mocha:: %@ precio $%.2f", order2.description, order2.cost);


    Beverage *order3 = [[Mocha alloc]initWithMocha:[[HouseBlend alloc] initWithHouseBlend:baseBeverage]]; //NOTA LA CADENETA DE INICIOS!
    NSLog(@"\n 3! mocha:: %@ precio $%.2f", order3.description, order3.cost);
}

- (void)initUI
{
    UIButton *actionButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    actionButton.frame = CGRectMake(100, 100, 90, 30);
    [actionButton setTitle:@"action" forState:UIControlStateNormal];
    [actionButton addTarget:self action:@selector(actionButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:actionButton];
}

- (void)factoryMethod
{
    //piensa en como sirve NSDictionary, y compara
    // en primera capa, puedo mandar datos a un objeto y con el convenience los puedo "function"
    
    
    NSString *palabraMisteriosa = [FactoryMethod transformString:@"pringamosa"];
    DLog(@"\ntu respuesta de factory method seria::%@", palabraMisteriosa);
    
    NSDictionary *miDicto = [NSDictionary dictionaryWithObject:@"Mirko Krokop" forKey:@"name"];
    DLog(@"\ntu Dicto :: %@", miDicto);
    
    UIView *vista = [FactoryMethod myView];
    [self.view addSubview:vista];
}

- (void)actionButtonPressed:(id)sender
{
    NSString *pingo = @"pingo";
    
    DLog(@"send Notification");
    [[NSNotificationCenter defaultCenter]postNotificationName:@"Event" object:pingo];
    
    
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
