//
//  CitiesTableViewController.h
//  GoogleMapsTable
//
//  Created by ioas on 10/03/14.
//  Copyright (c) 2014 ioas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CitiesTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *cityNames;
@property (nonatomic, strong) NSArray *cityLat;
@property (nonatomic, strong) NSArray *cityLon;

@end
