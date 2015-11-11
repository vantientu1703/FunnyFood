//
//  DataItem.m
//  FunnyFood
//
//  Created by Văn Tiến Tú on 11/11/15.
//  Copyright © 2015 ZooStudio. All rights reserved.
//

#import "DataItem.h"

@implementation DataItem

- (instancetype) initWithName:(NSString *)name addPrice:(NSString *)price withImage:(UIImage *)image andSaleOff:(NSString *)saleOff {
    
    self = [super init];
    if (self) {
        
        self.name = name;
        self.price = price;
        self.image = image;
        self.saleOff = saleOff;
    }
    
    return self;
}
@end
