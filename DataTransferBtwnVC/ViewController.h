//
//  ViewController.h
//  DataTransferBtwnVC
//
//  Created by Alivelu Ravula on 2/26/18.
//  Copyright © 2018 Alivelu Ravula. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *firstNameTF;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTF;
@property (weak, nonatomic) IBOutlet UITextField *ageTF;
@property (weak, nonatomic) IBOutlet UIButton *nxtBtn;

@property NSMutableArray *personalArry;


- (IBAction)perBtnActn:(id)sender;


- (IBAction)nextBtn:(id)sender;



//- (IBAction)nextBtnTap:(id)sender;

@end

