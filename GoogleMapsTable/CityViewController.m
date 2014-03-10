//
//  CityViewController.m
//  GoogleMapsTable
//
//  Created by ioas on 10/03/14.
//  Copyright (c) 2014 ioas. All rights reserved.
//

#import "CityViewController.h"

@interface CityViewController ()

@end

@implementation CityViewController

GMSMapView *mapView_;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    double lat = [_cityDetails[1] doubleValue];
    double lon = [_cityDetails[2] doubleValue];
    
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:lat
                                                            longitude:lon
                                                                 zoom:15];
    
    _cityMap.camera = camera;
    
    _cityMap.myLocationEnabled = YES;
    _cityMap.settings.myLocationButton = YES;
    _cityMap.mapType = kGMSTypeSatellite;
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(lat, lon);
    marker.title = _cityDetails[0];
    marker.snippet = _cityDetails[0];
    marker.map = _cityMap;
    
    _cityName.text = _cityDetails[0];
    self.title = _cityDetails[0];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
