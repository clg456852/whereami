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
   
    
}

 //获取文件沙盒地址
-(NSString *)documentsDirectory{
    NSArray *paths=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentDirectory=[paths firstObject];
    return documentDirectory;
}
-(NSString *)dataFilePath{
    return [[self documentsDirectory]stringByAppendingPathComponent:@"whereami.plist"];
    //return [[self documentsDirectory]stringByAppendingPathComponent:@"whereami.plist"];
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
