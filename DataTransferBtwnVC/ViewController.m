//
//  ViewController.m
//  DataTransferBtwnVC
//
//  Created by Alivelu Ravula on 2/26/18.
//  Copyright © 2018 Alivelu Ravula. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Toast.h"
#import "ContactDetailsVC.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nxtBtn.userInteractionEnabled=NO;
   

    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
BOOL returnValue=NO;

if(textField==self.firstNameTF)
{
    returnValue=YES;
}
else if(textField==self.lastNameTF)
{
    
    if(self.firstNameTF.text.length>=5)
    {
        returnValue=YES;
       
    }
    
    else if(self.firstNameTF.text.length==0)
    {
        [self.view makeToast:@"please enter first name" duration:3.0 position:CSToastPositionCenter];
        
    }
    else if(self.firstNameTF.text.length<5)
    {
        [self.view makeToast:@"First name should have atleast 5 characters"  duration:3.0 position:CSToastPositionCenter];
        
    }
    
    
}
else if(textField==self.ageTF)
{
    if(self.firstNameTF.text.length>=5&&self.lastNameTF.text.length>=5)
    {
        returnValue=YES;
        
       
    }
    else if(self.lastNameTF.text.length==0)
    {
        [self.view makeToast:@"please enter Last name"  duration:3.0 position:CSToastPositionCenter];
        
        
    }
    else if(self.lastNameTF.text.length<5)
    {
        [self.view makeToast:@" Last name should have atleast 5 characters"  duration:3.0 position:CSToastPositionCenter];
        
    }
}


return returnValue;


}
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{     BOOL returnValue=YES;
  
    
    return returnValue;
}


- (void)textFieldDidEndEditing:(UITextField *)textField
{
    
    if(textField==self.ageTF)
    {
        if(self.ageTF.text.intValue>=1 && self.ageTF.text.intValue<=120)
        {
            
                self.nxtBtn.userInteractionEnabled=YES;
                
            
        }
        else
            [self.view makeToast:@"Age should be between 1-120"
                        duration:3.0
                        position:CSToastPositionCenter];
        
    }
    
    
    
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if(string.length==0)
    {

    
        return YES;
        
    }
    
    
    BOOL returnValue=YES;
    
    if(textField==self.firstNameTF)
    {
        
        NSCharacterSet *strCharSet = [NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"];
        
        strCharSet = [strCharSet invertedSet];
        
        NSRange r = [string rangeOfCharacterFromSet:strCharSet];
        if (r.location != NSNotFound)
        {
            NSLog(@"the string contains illegal characters");
            [self.view makeToast:@"please enter alphabets only"  duration:3.0 position:CSToastPositionCenter];
            
            returnValue= NO;
        }
        
        
        else{
            
            
            returnValue= YES;
        }
    }
    
    
    else   if(textField==self.lastNameTF)
    {
        if (string.length==0)
        {
            
            return YES;
            
        }
        
        
        NSCharacterSet *strChar = [NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"];
        
        strChar = [strChar invertedSet];
        
        NSRange r = [string rangeOfCharacterFromSet:strChar];
        if (r.location != NSNotFound) {
            NSLog(@"the string contains illegal characters");
            [self.view makeToast:@"please enter alphabets only"  duration:3.0 position:CSToastPositionCenter];
            
            returnValue= NO;
        }
        else{
            
            
            returnValue= YES;
        }}
    
    else if (textField==self.ageTF)
    {
       if(string.length==0)
       {
            return YES;
            
        }
        
        
        NSCharacterSet *set = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
        
        if ([string rangeOfCharacterFromSet:set].location == NSNotFound)
        {
            returnValue= NO;
            [self.view makeToast:@"Enter numbers only"  duration:3.0 position:CSToastPositionCenter];
        }
        else if(self.ageTF.text.intValue>120)
        {
            returnValue= NO;
            [self.view makeToast:@"age should be between 0 to 120"  duration:3.0 position:CSToastPositionCenter];
            
        }
        
    }
    
    return returnValue;
    
    
    
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


- (IBAction)perBtnActn:(id)sender {
    
    
    
    NSMutableArray * personal = [NSMutableArray arrayWithObjects:self.firstNameTF.text,self.lastNameTF.text,self.ageTF.text, nil];
    
    
    

    
    ContactDetailsVC *cvc=[self.storyboard instantiateViewControllerWithIdentifier:@"cvc"];
    //    [self.navigationController pushViewController:instanceName animated:yes];

    [[self navigationController] pushViewController:cvc animated:YES];

    
        cvc.personalDetailsArr=[[NSMutableArray alloc]init];
        
        [cvc.personalDetailsArr addObject: personal];
       NSLog(@"%@",cvc.personalDetailsArr);
    



   
    
}

- (IBAction)nextBtn:(id)sender
{

     if(self.ageTF.text.intValue>120)
    {

        [self.view makeToast:@"age should be between 0 to 120"  duration:3.0 position:CSToastPositionCenter];

    }
    else if(self.ageTF.text.intValue<=120)
    {


    }
}



    
    




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
