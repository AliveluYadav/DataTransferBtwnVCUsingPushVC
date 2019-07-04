//
//  AccountDetailsVC.m
//  DataTransferBtwnVC
//
//  Created by Alivelu Ravula on 2/26/18.
//  Copyright © 2018 Alivelu Ravula. All rights reserved.
//

#import "AccountDetailsVC.h"
#import "EducationalDetailsVC.h"
#import "UIView+Toast.h"

@interface AccountDetailsVC ()

@end

@implementation AccountDetailsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.accBtn.userInteractionEnabled=NO;


    // Do any additional setup after loading the view.
}



//-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
//
//{
//    
//    if([identifier isEqualToString:@"ADtoED"])
//        
//    {
//        
//        if(self.userNameTF.text.length==0 || self.passwordTF.text.length==0 || self.confPswdTF.text.length==0)
//            
//        {
//            
//            [self.view makeToast:@" please fill all the above details" duration:3.0 position:CSToastPositionCenter];
//            
//            return NO;
//            
//        }else if(self.userNameTF.text.length<5 || self.userNameTF.text.length>30){
//            
//            [self.view makeToast:@" User Name  should contain 5-30 Characters" duration:3.0 position:CSToastPositionCenter];
//            
//            return NO;
//            
//        }else if (! [self isValidPassword:self.passwordTF.text]){
//            
//            [self.view makeToast:@" Password should contain atleast one special character,capital letter and number and 8 characters" duration:3.0 position:CSToastPositionCenter];
//            
//            return NO;
//            
//        }else if(! [self.confPswdTF.text isEqualToString:self.passwordTF.text]){
//            
//            [self.view makeToast:@"Password Missmatch" duration:3.0 position:CSToastPositionCenter];
//            
//            return NO;
//            
//        }
//        
//    }
//    
//    return YES;
//    
//}





- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    BOOL returnValue=NO;
    if(textField==self.userNameTF)
    {
        returnValue=YES;
    }
    else if(textField==self.passwordTF)
    {
        if(self.userNameTF.text.length>=5)
        {
            
            returnValue=YES;
        }
        else
            [self.view makeToast:@"UserName should contain atleast 5characters"
                        duration:3.0
                        position:CSToastPositionCenter];
    }
    else if(textField==self.confPswdTF)
    {
        if(self.userNameTF.text.length>=5 && [self isValidPassword:self.passwordTF.text])
        {
            returnValue=YES;
        }
        else
            [self.view makeToast:@"Enter Valid Password"
                        duration:3.0
                        position:CSToastPositionCenter];
    }
    return returnValue;
}
-(BOOL)isValidPassword:(NSString *)checkString{
    NSString *stricterFilterString = @"^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}";
    NSPredicate *passwordTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", stricterFilterString];
    return [passwordTest evaluateWithObject:checkString];
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    if(textField==self.confPswdTF)
    {
        if([self.confPswdTF.text isEqualToString:self.passwordTF.text])
        {
            self.accBtn.userInteractionEnabled=YES;
        }
        else
            [self.view makeToast:@"Password mismatch"
                        duration:3.0
                        position:CSToastPositionCenter];
        
    }
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)accBtnActn:(id)sender {
    [self.contactDetailsArr addObject:self.userNameTF.text];
    [self.contactDetailsArr addObject:self.passwordTF.text];
    [self.contactDetailsArr addObject:self.confPswdTF.text];
    
    
    
    EducationalDetailsVC *evc=[self.storyboard instantiateViewControllerWithIdentifier:@"evc"];
    [self.navigationController pushViewController:evc animated:YES];
    evc.accDetailsArray =[[NSMutableArray alloc]init];
        [evc.accDetailsArray addObject:self.contactDetailsArr];
        NSLog(@"%@",evc.accDetailsArray );



}
@end
