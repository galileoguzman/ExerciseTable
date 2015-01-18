//
//  cellPersonaje.h
//  ExerciseTable
//
//  Created by Galileo Guzman on 18/01/15.
//  Copyright (c) 2015 Galileo Guzman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface cellPersonaje : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *imgPersonaje;
@property (strong, nonatomic) IBOutlet UILabel *lblNombre;
@property (strong, nonatomic) IBOutlet UILabel *lblSubtitulo;
@property (strong, nonatomic) IBOutlet UILabel *lblEdad;

@end
