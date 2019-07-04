//
//  EducationalDetailsVC.h
//  DataTransferBtwnVC
//
//  Created by Alivelu Ravula on 2/26/18.
//  Copyright © 2018 Alivelu Ravula. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProfessionalDetailsVC.h"

@interface EducationalDetailsVC : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *btechPerTF;

@property (weak, nonatomic) IBOutlet UITextField *interPerTF;

@property (weak, nonatomic) IBOutlet UITextField *SSCPerTF;
@property (weak, nonatomic) IBOutlet UIButton *eduBtn;
- (IBAction)eduBtnActn:(id)sender;

@property NSMutableArray *accDetailsArray;


@end
