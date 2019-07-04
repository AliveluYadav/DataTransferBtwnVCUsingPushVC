//
//  ContactDetailsVC.h
//  DataTransferBtwnVC
//
//  Created by Alivelu Ravula on 2/26/18.
//  Copyright © 2018 Alivelu Ravula. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "AccountDetailsVC.h"
@interface ContactDetailsVC : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *mobileNumTF;
@property (weak, nonatomic) IBOutlet UITextField *emailIdTF;
@property (weak, nonatomic) IBOutlet UITextField *whatAppTF;
@property (weak, nonatomic) IBOutlet UIButton *contBtn;
- (IBAction)contBtnActn:(id)sender;
@property NSMutableArray *personalDetailsArr;
@end
