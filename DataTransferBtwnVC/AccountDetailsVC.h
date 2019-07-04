//
//  AccountDetailsVC.h
//  DataTransferBtwnVC
//
//  Created by Alivelu Ravula on 2/26/18.
//  Copyright © 2018 Alivelu Ravula. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EducationalDetailsVC.h"

@interface AccountDetailsVC : UIViewController


@property (weak, nonatomic) IBOutlet UITextField *userNameTF;

@property (weak, nonatomic) IBOutlet UITextField *passwordTF;

@property (weak, nonatomic) IBOutlet UITextField *confPswdTF;
@property (weak, nonatomic) IBOutlet UIButton *accBtn;
- (IBAction)accBtnActn:(id)sender;

@property NSMutableArray *contactDetailsArr;
@end
