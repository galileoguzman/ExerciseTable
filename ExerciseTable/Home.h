//
//  ViewController.h
//  ExerciseTable
//
//  Created by Galileo Guzman on 18/01/15.
//  Copyright (c) 2015 Galileo Guzman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Accounts/ACAccount.h>
#import <Social/Social.h>
#import <Twitter/Twitter.h>


@interface Home : UIViewController<UITableViewDelegate, UITableViewDataSource>
//Buttons

//Labels
@property (strong, nonatomic) IBOutlet UILabel *lblNombreSeleccionado;

//Tables
@property (weak, nonatomic) IBOutlet UITableView *tblMain;

//Views

//Actions
- (IBAction)btnShareSender:(id)sender;


@end

