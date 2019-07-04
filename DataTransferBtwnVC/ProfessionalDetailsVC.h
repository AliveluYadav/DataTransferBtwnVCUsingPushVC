//
//  ProfessionalDetailsVC.h
//  DataTransferBtwnVC
//
//  Created by Alivelu Ravula on 2/26/18.
//  Copyright © 2018 Alivelu Ravula. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FinalFormVC.h"

@interface ProfessionalDetailsVC : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *companyNamTF;

@property (weak, nonatomic) IBOutlet UITextField *addressTF;

@property (weak, nonatomic) IBOutlet UIButton *profBtn;
@property (weak, nonatomic) IBOutlet UITextField *designtnTF;

@property (weak, nonatomic) IBOutlet UITextField *salaryTF;

@property NSMutableArray *eduDetailsArray;
- (IBAction)profBtnActn:(id)sender;


@end
