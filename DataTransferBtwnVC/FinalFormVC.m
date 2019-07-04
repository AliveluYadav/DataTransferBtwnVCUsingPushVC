//
//  FinalFormVC.m
//  DataTransferBtwnVC
//
//  Created by Alivelu Ravula on 2/26/18.
//  Copyright © 2018 Alivelu Ravula. All rights reserved.
//

#import "FinalFormVC.h"
#import "ViewController.h"
@interface FinalFormVC ()

@end

@implementation FinalFormVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.array=[[NSMutableArray alloc]init];
self.scrollView.contentSize=CGSizeMake(self.scrollView.frame.size.width,self.scrollView.frame.size.height+800);
    
    self.firstNameRF.text = [[[[[[self.profArray objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:0];
    
    self.lastNameRF.text=[[[[[[self.profArray objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:1];
    
    self.ageRF.text=[[[[[[self.profArray objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:2];
    
    
    
    self.mobileNumRF.text = [[[[[self.profArray objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:1];
    
    self.emailIdRF.text=[[[[[self.profArray objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:2];
    
    self.whatsAppNumRF.text=[[[[[self.profArray objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:3];
    
    self.usrNamRF.text = [[[[self.profArray objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:1];
    self.pswdRF.text = [[[[self.profArray objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:2];
    self.confPswdRF.text = [[[[self.profArray objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:3];
    
    self.btechPerRF.text = [[[self.profArray objectAtIndex:0]objectAtIndex:0]objectAtIndex:1];
    self.interPerRF.text = [[[self.profArray objectAtIndex:0]objectAtIndex:0]objectAtIndex:2];
    self.SSCPerRF.text = [[[self.profArray objectAtIndex:0]objectAtIndex:0]objectAtIndex:3];
    self.companyNamRF.text =[[self.profArray objectAtIndex:0]objectAtIndex:1];
    self.addressRF.text = [[self.profArray objectAtIndex:0]objectAtIndex:2];
    self.designtnRF.text = [[self.profArray objectAtIndex:0]objectAtIndex:3];
    self.salaryRF.text = [[self.profArray objectAtIndex:0]objectAtIndex:4];
    
    
    
    NSLog(@"%@",self.profArray);
    
    
    
    
    
    // Do any additional setup after loading the view.
}
- (IBAction)registerBtnActn:(id)sender

{
    self.alert=[UIAlertController alertControllerWithTitle:@"DoUWantToADD" message:@"" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* yesButton = [UIAlertAction
                                actionWithTitle:@"yes"
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
                                
                                  

self.detailsArray=[[NSMutableArray alloc]initWithObjects:self.firstNameRF.text, self.lastNameRF.text,self.ageRF.text,self.mobileNumRF.text,self.emailIdRF.text,self.whatsAppNumRF.text,self.usrNamRF.text,self.pswdRF.text,self.confPswdRF.text,self.btechPerRF.text,self.interPerRF.text,self.SSCPerRF.text,self.companyNamRF.text,self.addressRF.text,self.designtnRF.text,self.salaryRF.text, nil];
                                    
 
                                    
                                    
                                    
                                        [self.array addObject:self.detailsArray];

//                                        [self.array addObject:self.profArray];
                                    
                                        
                                        //  self.email=self.textFieldEmail.text;
//                                        [self clearUI];
                             
                                }];
    
    UIAlertAction* noButton = [UIAlertAction
                               actionWithTitle:@"No"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction * action) {
                                   
//                                   [self clearUI];
                               }];
    [self.alert addAction:yesButton];
    [self.alert addAction:noButton];
    
    [self presentViewController:self.alert animated:YES completion:nil];
    
    
    
    
    
    
}



- (IBAction)showUsersActn:(id)sender {

    
    
    self.add=[UIAlertController alertControllerWithTitle:@"" message:@"Users" preferredStyle:UIAlertControllerStyleActionSheet];
    
    for(unsigned char i=0;i<self.array.count;i++)
    {
        
        
        UIAlertAction* yesButton = [UIAlertAction actionWithTitle:[[self.array objectAtIndex:i]objectAtIndex:0]       style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
            

        
//
//        UIAlertAction* yesButton = [UIAlertAction actionWithTitle:[[[[[[[self.array objectAtIndex:i] objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]       style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
//
        
            int j=0;
            
            
            self.firstNameRF.text=[[self.array objectAtIndex:i]objectAtIndex:j];
            j++;
            
            self.lastNameRF.text=[[self.array objectAtIndex:i]objectAtIndex:j];
            j++;
            
            self.ageRF.text=[[self.array objectAtIndex:i]objectAtIndex:j];
            j++;
            
            self.mobileNumRF.text=[[self.array objectAtIndex:i]objectAtIndex:j];
            j++;
            
            self.emailIdRF.text=[[self.array objectAtIndex:i]objectAtIndex:j];
            j++;
            
            self.whatsAppNumRF.text=[[self.array objectAtIndex:i]objectAtIndex:j];
            j++;
            
            self.usrNamRF.text=[[self.array objectAtIndex:i]objectAtIndex:j];
            j++;
            
            self.pswdRF.text=[[self.array objectAtIndex:i]objectAtIndex:j];
            j++;
            self.confPswdRF.text=[[self.array objectAtIndex:i]objectAtIndex:j];
            j++;
            self.btechPerRF.text=[[self.array objectAtIndex:i]objectAtIndex:j];
            j++;
            self.interPerRF.text=[[self.array objectAtIndex:i]objectAtIndex:j];
            j++;
            self.SSCPerRF.text=[[self.array objectAtIndex:i]objectAtIndex:j];
            j++;
            self.companyNamRF.text=[[self.array objectAtIndex:i]objectAtIndex:j];
            j++;
            self.addressRF.text=[[self.array objectAtIndex:i]objectAtIndex:j];
            j++;
            self.designtnRF.text=[[self.array objectAtIndex:i]objectAtIndex:j];
            j++;
            self.salaryRF.text=[[self.array objectAtIndex:i]objectAtIndex:j];

            
           
//        self.firstNameRF.text = [[[[[[[self.array objectAtIndex:i] objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:0];
//
//        self.lastNameRF.text=[[[[[[[self.array objectAtIndex:i] objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:1];
//
//        self.ageRF.text=[[[[[[[self.array objectAtIndex:i] objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:2];
//
//
//
//            self.mobileNumRF.text = [[[[[[self.array objectAtIndex:i] objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:1];
//
//            self.emailIdRF.text=[[[[[[self.array objectAtIndex:i] objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:2];
//
//            self.whatsAppNumRF.text=[[[[[[self.array objectAtIndex:i] objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:3];
//
//            self.usrNamRF.text = [[[[[self.array objectAtIndex:i] objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:1];
//            self.pswdRF.text = [[[[[self.array objectAtIndex:i] objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:2];
//            self.confPswdRF.text = [[[[[self.array objectAtIndex:i] objectAtIndex:0]objectAtIndex:0]objectAtIndex:0]objectAtIndex:3];
//
//            self.btechPerRF.text = [[[[self.array objectAtIndex:i]objectAtIndex:0]objectAtIndex:0]objectAtIndex:1];
//            self.interPerRF.text = [[[[self.array objectAtIndex:i] objectAtIndex:0]objectAtIndex:0]objectAtIndex:2];
//            self.SSCPerRF.text = [[[[self.array objectAtIndex:i]objectAtIndex:0]objectAtIndex:0]objectAtIndex:3];
//
//            self.companyNamRF.text = [[[self.array objectAtIndex:i] objectAtIndex:0]objectAtIndex:1];
//            self.addressRF.text = [[[self.array objectAtIndex:i] objectAtIndex:0]objectAtIndex:2];
//            self.designtnRF.text = [[[self.array objectAtIndex:i] objectAtIndex:0]objectAtIndex:3];
//            self.salaryRF.text = [[[self.array objectAtIndex:i]objectAtIndex:0]objectAtIndex:4];
//
//
            
        }];
        
        [self.add addAction:yesButton];
    }
    
    
    
    UIAlertAction* noButton = [UIAlertAction
                               actionWithTitle:@"No"
                               style:UIAlertActionStyleCancel
                               handler:^(UIAlertAction * action) {
                               }];
    
    [self.add addAction:noButton];
    
    [self presentViewController:self.add animated:YES completion:nil];
    
    
    
    
    
    
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


- (IBAction)backBtnActn:(id)sender {
//    ViewController *vc=[self.storyboard instantiateViewControllerWithIdentifier:@"again"];
//    [self.navigationController pushViewController:vc animated:YES];
}
@end
