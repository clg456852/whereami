//
//  FanViewController.h
//  whereami
//
//  Created by  plusub on 14-7-1.
//  Copyright (c) 2014年 plusub. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <CoreLocation/CLLocationManagerDelegate.h>
@interface FanViewController : UIViewController<CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
    double longitude;
    double latitude;
    double altitude;
}

@end
