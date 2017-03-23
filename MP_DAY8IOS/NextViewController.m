//
//  NextViewController.m
//  MP_DAY8IOS
//
//  Created by Student 6 on 08/03/17.
//  Copyright © 2017 PreetiPawar. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.Label=[[UILabel alloc]initWithFrame:CGRectMake(10, 130, 400, 60)];
    self.Label.font=[UIFont boldSystemFontOfSize:30];
    self.Label.textColor=[UIColor redColor];
    self.Label.text=self.selectedName;
    //[self.view addSubview:self.Label];
    
    self.imageView1=[[UIImageView alloc]initWithFrame:CGRectMake(10, 100, 400, 400)];
    self.imageView1.image=self.selectedImageView.image;
    [self.view addSubview:self.imageView1];
    // Do any additional setup after loading the view.
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
