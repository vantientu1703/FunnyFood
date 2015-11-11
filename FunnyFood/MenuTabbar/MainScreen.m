//
//  MainScreen.m
//  FunnyFood
//
//  Created by Văn Tiến Tú on 11/11/15.
//  Copyright © 2015 ZooStudio. All rights reserved.
//

#import "MainScreen.h"
#import "DetailScreenTableViewController.h"


@interface MainScreen ()

@property (nonatomic, strong) DetailScreenTableViewController *detailScreen;
@end

@implementation MainScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)iceCream:(id)sender {
    
    DetailScreenTableViewController *detailScreenTableViewController = [[DetailScreenTableViewController alloc] init];
    detailScreenTableViewController.stringTitleDetailScreen = @"Ice Cream";
    [self.navigationController pushViewController:detailScreenTableViewController animated:YES];
}

- (IBAction)drink:(id)sender {
    
    DetailScreenTableViewController *detailScreenTableViewController = [[DetailScreenTableViewController alloc] init];
    detailScreenTableViewController.stringTitleDetailScreen = @"Drink";
    [self.navigationController pushViewController:detailScreenTableViewController animated:YES];
}

- (IBAction)birthday:(id)sender {
    
    DetailScreenTableViewController *detailScreenTableViewController = [[DetailScreenTableViewController alloc] init];
    detailScreenTableViewController.stringTitleDetailScreen = @"Birthday";
    [self.navigationController pushViewController:detailScreenTableViewController animated:YES];
}

- (IBAction)cookies:(id)sender {
    
    DetailScreenTableViewController *detailScreenTableViewController = [[DetailScreenTableViewController alloc] init];
    detailScreenTableViewController.stringTitleDetailScreen = @"Cookies";
    [self.navigationController pushViewController:detailScreenTableViewController animated:YES];
}

- (IBAction)bread:(id)sender {
    
    DetailScreenTableViewController *detailScreenTableViewController = [[DetailScreenTableViewController alloc] init];
    detailScreenTableViewController.stringTitleDetailScreen = @"Bread";
    [self.navigationController pushViewController:detailScreenTableViewController animated:YES];
}

@end
