//
//  SaleOffScreen.m
//  FunnyFood
//
//  Created by Văn Tiến Tú on 11/11/15.
//  Copyright © 2015 ZooStudio. All rights reserved.
//

#import "SaleOffScreen.h"
#import "DetailScreenTableViewController.h"


@interface SaleOffScreen ()

@end

@implementation SaleOffScreen

- (void) viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    self.title = @"Sale Off";
    
    DetailScreenTableViewController *detailScreenViewController = [[DetailScreenTableViewController alloc] init];
    
    detailScreenViewController.stringTitleDetailScreen = @"Sale Off";
    [self.navigationController pushViewController:detailScreenViewController animated:YES];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
}


@end
