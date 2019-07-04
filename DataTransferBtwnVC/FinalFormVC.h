//
//  FinalFormVC.h
//  DataTransferBtwnVC
//
//  Created by Alivelu Ravula on 2/26/18.
//  Copyright © 2018 Alivelu Ravula. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FinalFormVC : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *firstNameRF;

@property (weak, nonatomic) IBOutlet UITextField *lastNameRF;

@property (weak, nonatomic) IBOutlet UITextField *ageRF;

@property (weak, nonatomic) IBOutlet UITextField *mobileNumRF;
@property (weak, nonatomic) IBOutlet UITextField *emailIdRF;

@property (weak, nonatomic) IBOutlet UITextField *whatsAppNumRF;
@property (weak, nonatomic) IBOutlet UITextField *usrNamRF;
@property (weak, nonatomic) IBOutlet UITextField *pswdRF;
@property (weak, nonatomic) IBOutlet UITextField *confPswdRF;

@property (weak, nonatomic) IBOutlet UITextField *btechPerRF;
@property (weak, nonatomic) IBOutlet UITextField *interPerRF;

@property (weak, nonatomic) IBOutlet UITextField *SSCPerRF;
@property (weak, nonatomic) IBOutlet UITextField *companyNamRF;
@property (weak, nonatomic) IBOutlet UITextField *addressRF;

@property (weak, nonatomic) IBOutlet UITextField *designtnRF;
- (IBAction)backBtnActn:(id)sender;

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UITextField *salaryRF;
@property NSString *firNamStr;
@property NSMutableArray *profArray;
@property NSMutableArray *detailsArray;
@property NSMutableArray *array;
@property UIAlertController *alert;
@property UIAlertController *add;



- (IBAction)registerBtnActn:(id)sender;
- (IBAction)showUsersActn:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *regBtnActn;


@end
