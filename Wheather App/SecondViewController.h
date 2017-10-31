//
//  SecondViewController.h
//  Wheather App
//
//  Created by Student016 on 11/09/17.
//  Copyright (c) 2017 felix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController<NSURLConnectionDataDelegate,NSURLConnectionDelegate>

@property (strong, nonatomic) IBOutlet UILabel *overviewlbl;

@property (strong, nonatomic) IBOutlet UILabel *humiditylbl;

@property (strong, nonatomic) IBOutlet UILabel *pressurelbl;

@property (strong, nonatomic) IBOutlet UILabel *templbl;

@property (strong, nonatomic) IBOutlet UILabel *latlbl;

@property (strong, nonatomic) IBOutlet UILabel *longlbl;

@property(nonatomic,retain) NSString *tempstr,*tempcity;

@property (strong, nonatomic) IBOutlet UILabel *infolbl;

@property(nonatomic,retain)NSMutableData *buffer;








@end
