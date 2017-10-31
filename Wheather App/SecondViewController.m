//
//  SecondViewController.m
//  Wheather App
//
//  Created by Student016 on 11/09/17.
//  Copyright (c) 2017 felix. All rights reserved.
//

#import "SecondViewController.h"
#import "FirstViewController.h"
#import "wheather.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    // Do any additional setup after loading the view.
    
    _infolbl.text=[NSString stringWithFormat:@"This is Wheather Information Of=%@",_tempcity];
    
    _buffer=[[NSMutableData alloc]init];
    
    NSURLRequest *request=[[NSURLRequest alloc]initWithURL:[NSURL URLWithString:_tempstr]];
    
    [NSURLConnection connectionWithRequest:request delegate:self];

    
}
-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    [_buffer setLength:0];
}
-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [_buffer appendData:data];
}
-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    
    
    NSDictionary *jsondic=[NSJSONSerialization JSONObjectWithData:_buffer options:NSJSONReadingAllowFragments error:nil];
    
    NSDictionary *locdic=[jsondic objectForKey:@"location"];
    
    
    _latlbl.text=[[locdic objectForKey:@"lat"]description];
    _longlbl.text=[[locdic objectForKey:@"lon"]description];
    
    
    NSDictionary *currentdic=[jsondic objectForKey:@"current"];
    
    _templbl.text=[[currentdic objectForKey:@"temp_c"]description];
    _humiditylbl.text=[[currentdic objectForKey:@"humidity"]description];
    _pressurelbl.text=[[currentdic objectForKey:@"pressure_in"]description];
    
    
    NSDictionary *conditiondic=[currentdic objectForKey:@"condition"];
    _overviewlbl.text=[conditiondic objectForKey:@"text"];

  
    
    

    
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

@end
