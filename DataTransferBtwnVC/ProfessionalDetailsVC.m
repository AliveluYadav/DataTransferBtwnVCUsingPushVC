//
//  ProfessionalDetailsVC.m
//  DataTransferBtwnVC
//
//  Created by Alivelu Ravula on 2/26/18.
//  Copyright © 2018 Alivelu Ravula. All rights reserved.
//

#import "ProfessionalDetailsVC.h"
#import "FinalFormVC.h"
#import "UIView+Toast.h"

@interface ProfessionalDetailsVC ()

@end

@implementation ProfessionalDetailsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.profBtn.userInteractionEnabled=NO;

    
 

    // Do any additional setup after loading the view.
}




- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    BOOL returnValue=NO;
    if(textField==self.companyNamTF)
        returnValue=YES;
    
    else if(textField==self.addressTF)
    {
        if(self.companyNamTF.text.length>=5)
        {
            
            returnValue=YES;
        }
        else
            [self.view makeToast:@"First Name should contain atleast 5 characters"
                        duration:3.0
                        position:CSToastPositionCenter];
    }
    else if(textField==self.designtnTF)
    {
         if((self.companyNamTF.text.length>=5)&&(self.addressTF.text.length>=5))
            {
                returnValue=YES;
                
            }
         else {
             
             [self.view makeToast:@"address should contain atleast 5 characters"
                         duration:3.0
                         position:CSToastPositionCenter];
         }
         }
        
        
        
    
    
    
    
    else if(textField==self.salaryTF)
    {
        if(self.self.companyNamTF.text.length>=2 && self.addressTF.text.length>=2&& self.designtnTF.text.length>=5)
        {
            
            returnValue=YES;
        }
        else
            [self.view makeToast:@"designation should contain atleast 5 characters"
                        duration:3.0
                        position:CSToastPositionCenter];
    }
    return returnValue;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField
{
    if(textField==self.salaryTF)
    {
        if(self.salaryTF.text.intValue>=5000 )
            
        {
            self.profBtn.userInteractionEnabled=YES;
        }
        else
            [self.view makeToast:@"salary should be greater than 5000"
                        duration:3.0
                        position:CSToastPositionCenter];
        
    }
}


-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if(textField==self.designtnTF)
    {
        if(string.length==0)
        {
            return YES;
        }
        
        NSCharacterSet *set=[NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"];
        if([string rangeOfCharacterFromSet:set].location==NSNotFound )
        {
            [self.view makeToast:@"Please Enter Alphabets Only"
                        duration:3.0
                        position:CSToastPositionCenter];
            
            return NO;
        }
        
    }
    if(textField==self.salaryTF)
    {
        if(string.length==0)
        {
            return YES;
        }
        
        NSCharacterSet *set=[NSCharacterSet characterSetWithCharactersInString:@"1234567890"];
        if([string rangeOfCharacterFromSet:set].location==NSNotFound )
        {
            [self.view makeToast:@"Please Enter Numbers Only"
                        duration:3.0
                        position:CSToastPositionCenter];
            
            return NO;
        }
    }
    return YES;
}
- (BOOL)textFieldShouldClear:(UITextField *)textField
{
    return YES;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
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

- (IBAction)profBtnActn:(id)sender {
    
    
    [self.eduDetailsArray addObject:self.self.companyNamTF.text];
    [self.eduDetailsArray addObject:self.addressTF.text];
    [self.eduDetailsArray addObject:self.designtnTF.text];
    [self.eduDetailsArray addObject:self.salaryTF.text];

    
    
    FinalFormVC *rvc=[self.storyboard instantiateViewControllerWithIdentifier:@"rvc"];
    [self.navigationController pushViewController:rvc animated:YES];
        
        rvc.profArray =[[NSMutableArray alloc]init];
        [rvc.profArray addObject:self.eduDetailsArray];
        NSLog(@"%@",rvc.profArray );
        
        
        
        
    }
@end
