//
//  EducationalDetailsVC.m
//  DataTransferBtwnVC
//
//  Created by Alivelu Ravula on 2/26/18.
//  Copyright © 2018 Alivelu Ravula. All rights reserved.
//

#import "EducationalDetailsVC.h"
#import "ProfessionalDetailsVC.h"
#import "UIView+Toast.h"

@interface EducationalDetailsVC ()

@end

@implementation EducationalDetailsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.eduBtn.userInteractionEnabled=NO;

    // Do any additional setup after loading the view.
}



- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    BOOL returnValue=NO;
    if(textField==self.btechPerTF)
    {
        returnValue=YES;
    }
    else if (textField==self.interPerTF)
    {
        if(self.btechPerTF.text.integerValue>=60 && self.btechPerTF.text.integerValue<=100)
        {
            returnValue=YES;
        }
        else
            [self.view makeToast:@"Percentage should be between 60 and 100"
                        duration:3.0
                        position:CSToastPositionCenter];
    }
    else if(textField==self.SSCPerTF)
    {
        if(self.btechPerTF.text.integerValue>=60 && self.btechPerTF.text.integerValue<=100 && self.interPerTF.text.integerValue>=60 && self.interPerTF.text.integerValue<=100 )
        {
            returnValue=YES;
        }
        else
            [self.view makeToast:@"Percentage should be between 60 and 100"
                        duration:3.0
                        position:CSToastPositionCenter];
    }
    return returnValue;
}
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if(textField==self.btechPerTF||textField==self.interPerTF||textField==self.SSCPerTF)
    {
        if(string.length==0)
        {
            return YES;
        }
        
        NSCharacterSet *set=[NSCharacterSet characterSetWithCharactersInString:@"1234567890."];
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

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    if(textField==self.SSCPerTF)
    {
        if(self.SSCPerTF.text.floatValue>=60 && self.SSCPerTF.text.floatValue<=100)
            
        {
            self.eduBtn.userInteractionEnabled=YES;
            
        }
        else
            [self.view makeToast:@"Percentage should be between 60 and 100"
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

- (IBAction)eduBtnActn:(id)sender
{
    
    [self.accDetailsArray addObject:self.btechPerTF.text];
    [self.accDetailsArray addObject:self.interPerTF.text];
    [self.accDetailsArray addObject:self.SSCPerTF.text];
    
    
    
    ProfessionalDetailsVC *pvc=[self.storyboard instantiateViewControllerWithIdentifier:@"pvc"];
    
    [self.navigationController pushViewController:pvc animated:YES];
    
    
        pvc.eduDetailsArray =[[NSMutableArray alloc]init];
        [pvc.eduDetailsArray addObject:self.accDetailsArray];
        NSLog(@"%@",pvc.eduDetailsArray );
        

     }
     
@end
