//
//  CityViewController.h
//  GoogleMapsTable
//
//  Created by ioas on 10/03/14.
//  Copyright (c) 2014 ioas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleMaps/GoogleMaps.h>

@interface CityViewController : UIViewController
@property (weak, nonatomic) IBOutlet GMSMapView *cityMap;
@property (weak, nonatomic) IBOutlet UILabel *cityName;

@property (strong, nonatomic) NSArray *cityDetails;

@end
