//
//  AppDelegate.h
//  MP_DAY8IOS
//
//  Created by Student 13 on 3/6/17.
//  Copyright © 2017 PreetiPawar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UIViewController *myView;
@property (strong, nonatomic) UITableView *mytable;
@property (strong, nonatomic) NSArray *array;
@property (strong, nonatomic) NSArray *array1;
@property (strong, nonatomic) NSArray *arrayimage;
@property (strong, nonatomic) UIImageView *imgview1;
@property (strong, nonatomic) UIImage *img;

@property (strong, nonatomic) UINavigationController *navigationControl;


@end

