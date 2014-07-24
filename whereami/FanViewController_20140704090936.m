//
//  FanViewController.m
//  whereami
//
//  Created by  plusub on 14-7-1.
//  Copyright (c) 2014年 plusub. All rights reserved.
//

#import "FanViewController.h"



@interface FanViewController ()

@end

@implementation FanViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    locationManager=[[CLLocationManager alloc]init];
    [locationManager setDelegate:self];
    [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    [locationManager setDistanceFilter:1000];
    [locationManager startUpdatingLocation];
    NSLog(@"%@",[self DocumentsDirectory]);
    NSLog(@"%@",[self dataFilePath]);
    
}

 //获取文件沙盒地址
-(NSString *)DocumentsDirectory{
    NSArray *paths=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory=[paths firstObject];
    return documentsDirectory;
}
-(NSString *)dataFilePath{
    return [[self DocumentsDirectory]stringByAppendingPathComponent:@"wheremai.plist"];
}
-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
    CLLocationManager *currentLocation=[locations lastObject];
    NSLog(@"%@",currentLocation);
}
-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    NSLog(@"%@",error);
}
//-(void)initWithNibname:(NSString *)nibnameOrNil bundle:(NSBundle *)nibnameOrNil
//{
//    self=[super initWithNibName:nibnameOrNil bundle:nibnameOrNil];
//    if (self) {
//        loactionManager=[[CLLocationManager alloc]init];
//        [loca]
//    }

@end
