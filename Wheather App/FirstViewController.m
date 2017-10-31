//
//  FirstViewController.m
//  Wheather App
//
//  Created by Student016 on 11/09/17.
//  Copyright (c) 2017 felix. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view.
    
   // self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"image1.jpeg"]];
    
    
    
    
    
    
    
    
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

- (IBAction)checkaction:(id)sender
{
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    SecondViewController *secondvc=[story instantiateViewControllerWithIdentifier:@"svc"];
    
    NSString *actualstr=[NSString stringWithFormat:@"https://api.apixu.com/v1/current.json?key=3c694b0bfc164b019c2122309170809&q=%@",_citytf.text];
    
    secondvc.tempstr=actualstr;
    
    
    
    [self.navigationController pushViewController:secondvc animated:YES];
    
    secondvc.tempcity=_citytf.text;
}
@end
