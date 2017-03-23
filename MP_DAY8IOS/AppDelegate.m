//
//  AppDelegate.m
//  MP_DAY8IOS
//
//  Created by Student 13 on 3/6/17.
//  Copyright © 2017 PreetiPawar. All rights reserved.
//

#import "AppDelegate.h"
#import "NextViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor=[UIColor orangeColor];
    
    self.myView=[[UIViewController alloc]init];
    
    self.window.rootViewController=self.myView;

    self.mytable=[[UITableView alloc]initWithFrame:CGRectMake(50, 50, 300, 500) style:UITableViewStylePlain];
    self.array=[NSArray arrayWithObjects:@"Manesh",@"Pravin",@"Amol", nil];
    self.array1=[NSArray arrayWithObjects:@"Manesh",@"Pravin",@"Padmini", nil];
    
    self.arrayimage=[NSArray arrayWithObjects:@"image1.jpg",@"image2.jpg",@"image3.jpg", nil];
    
    self.mytable.delegate=self;
    self.mytable.dataSource=self;
    self.mytable.backgroundColor=[UIColor yellowColor];
    [self.myView.view addSubview:self.mytable];
    
    self.navigationControl=[[UINavigationController alloc]init];
    
    [self.window makeKeyAndVisible];
    return YES;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.window.rootViewController=self.navigationControl;
    UITableViewCell *cell=[tableView cellForRowAtIndexPath:indexPath];
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    NextViewController *nvc=[[NextViewController alloc]init];
    
    cell.textLabel.text=[self.array objectAtIndex:indexPath.row];
    //nvc.selectedName=cell.textLabel.text;
    self.img=[UIImage imageNamed:[self.arrayimage objectAtIndex:indexPath.row]];
    self.imgview1=[[UIImageView alloc]initWithImage:self.img];
    nvc.selectedImageView=self.imgview1;
    //cell.imageView.image=self.imgview1.image;
    //nvc.imageView.image=cell.imageView.image;
    
    
    [self.navigationControl pushViewController:nvc animated:YES];
    NSLog(@"%@",nvc.selectedName);
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView*)tableView
{
    return 1;
    
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(self.array.count>0)
    {
        return self.array.count;
    }
    else
        return 0;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell.contentView.backgroundColor=[UIColor yellowColor];
    //if(indexPath.section==1)
    //{
        cell.textLabel.text=[self.array objectAtIndex:indexPath.row];
        self.img=[UIImage imageNamed:[self.arrayimage objectAtIndex:indexPath.row]];
        self.imgview1=[[UIImageView alloc]initWithImage:self.img];
        cell.imageView.image=self.imgview1.image;
        return cell;
   // }
    //else
   // {
      //  cell.textLabel.text=[self.array1 objectAtIndex:indexPath.row];
      //  UIImage *img=[UIImage imageNamed:[self.arrayimage objectAtIndex:indexPath.row]];
       // self.imgview1=[[UIImageView alloc]initWithImage:img];
       // cell.imageView.image=self.imgview1.image;
       // return cell;
   // }

    

    
    
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
