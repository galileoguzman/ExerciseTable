//
//  ViewController.m
//  ExerciseTable
//
//  Created by Galileo Guzman on 18/01/15.
//  Copyright (c) 2015 Galileo Guzman. All rights reserved.
//

#import "Home.h"
#import "cellPersonaje.h"

NSMutableArray *nombreArray;
NSMutableArray *imagenesArray;
NSMutableArray *roleArray;
NSMutableArray *edadArray;

@interface Home ()

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initController
{
    nombreArray = [NSMutableArray arrayWithObjects:
                   @"Galileo Guzmán",
                   @"Augusto Bustamante",
                   @"Osvaldo Alejandro",
                   @"José manuel chavez",
                   @"Jesus Hernandez",
                   @"Felipe velasco",
                   @"Ricardo Vera",
                   nil];
    
    imagenesArray = [NSMutableArray arrayWithObjects:
                   @"zombie01.png",
                   @"zombie02.png",
                   @"zombie03.png",
                   @"zombie04.png",
                   @"zombie05.png",
                   @"zombie06.png",
                   @"zombie07.png",
                   nil];
    
    edadArray = [NSMutableArray arrayWithObjects:
                     @"23",
                     @"12",
                     @"78",
                     @"44",
                     @"30",
                     @"29",
                     @"1",
                     nil];
    roleArray = [NSMutableArray arrayWithObjects:
                 @"Come gente",
                 @"ceson",
                 @"zombie general",
                 @"zombie cabo",
                 @"zombie patito",
                 @"zombie cap",
                 @"zombie peon",
                 nil];

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return nombreArray.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"cellPersonaje";
    cellPersonaje *cell = (cellPersonaje *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[cellPersonaje alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.lblNombre.text = nombreArray[indexPath.row];
    cell.lblSubtitulo.text = roleArray[indexPath.row];
    cell.lblEdad.text = edadArray[indexPath.row];
    cell.imgPersonaje.image = [UIImage imageNamed:imagenesArray[indexPath.row]];
    //Agregar un borde fino al UIImage
    cell.imgPersonaje.layer.borderWidth = 3.0f;
    cell.imgPersonaje.layer.borderColor = [UIColor purpleColor].CGColor;
    //Agregar borde redondeado al UIImage
    cell.imgPersonaje.layer.cornerRadius = cell.imgPersonaje.frame.size.width / 2;
    cell.imgPersonaje.clipsToBounds = YES;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.lblNombreSeleccionado.text = nombreArray[indexPath.row];
    NSString *strTemp;
    
    
    strTemp = [self.lblNombreSeleccionado.text stringByAppendingString:@" fué seleccionado"];
    if (indexPath.row == 3) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Titulo de la alerta"
                                                        message:strTemp delegate:nil cancelButtonTitle:@"Enterado"otherButtonTitles:nil, nil];
        
        [alert show];
    }
}


@end
