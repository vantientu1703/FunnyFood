//
//  DataItem.h
//  FunnyFood
//
//  Created by Văn Tiến Tú on 11/11/15.
//  Copyright © 2015 ZooStudio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DataItem : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *price;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *saleOff;

- (instancetype) initWithName: (NSString *) name
                     addPrice: (NSString *) price
                    withImage: (UIImage *) image
                   andSaleOff: (NSString *) saleOff;
@end
