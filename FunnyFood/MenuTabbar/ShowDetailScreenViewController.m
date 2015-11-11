//
//  ShowDetailScreenViewController.m
//  FunnyFood
//
//  Created by Văn Tiến Tú on 11/12/15.
//  Copyright © 2015 ZooStudio. All rights reserved.
//

#import "ShowDetailScreenViewController.h"

@interface ShowDetailScreenViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageFood;

@property (weak, nonatomic) IBOutlet UILabel *foodName;

@property (weak, nonatomic) IBOutlet UILabel *labelPrice;

@property (weak, nonatomic) IBOutlet UILabel *labelSaleOff;

@end

@implementation ShowDetailScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Detail Food";
    
    _imageFood.image = _imageFoodpush;
    _foodName.text = _foodNamepush;
    _labelPrice.text = _labelPricepush;
    _labelSaleOff.text = _labelSaleOffpush;
    // Do any additional setup after loading the view from its nib.
}

@end
