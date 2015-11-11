//
//  DetailScreenTableViewController.m
//  FunnyFood
//
//  Created by Văn Tiến Tú on 11/11/15.
//  Copyright © 2015 ZooStudio. All rights reserved.
//

#import "DetailScreenTableViewController.h"
#import "CustomTableViewCell.h"
#import "DataItem.h"
#import "ShowDetailScreenViewController.h"
#import "MainScreen.h"

@interface DetailScreenTableViewController ()


@end

@implementation DetailScreenTableViewController
{
    
    NSMutableArray *arrDataItem;
    NSMutableArray *arrDataItemSaleOffs;
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self createBirthdays];
    [self createBreads];
    [self createCookies];
    [self createDrinks];
    [self createIceCreams];
    
    [self chooseDataItem];
    
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = _stringTitleDetailScreen;
    self.view.backgroundColor = [UIColor whiteColor];
    arrDataItemSaleOffs = [[NSMutableArray alloc] init];
    [self createBirthdays];
    [self createBreads];
    [self createCookies];
    [self createDrinks];
    [self createIceCreams];
    
    [self chooseDataItem];
}
- (void) chooseDataItem {
    
    if ([_stringTitleDetailScreen isEqualToString:@"Ice Cream"]) {
        [self createIceCreams];
    } else if ([_stringTitleDetailScreen isEqualToString:@"Drink"]) {
        [self createDrinks];
    } else if ([_stringTitleDetailScreen isEqualToString:@"Birthday"]) {
        [self createBirthdays];
    } else if ([_stringTitleDetailScreen isEqualToString:@"Cookies"]) {
        [self createCookies];
    } else if ([_stringTitleDetailScreen isEqualToString:@"Bread"]) {
        [self createBreads];
    } else if ([_stringTitleDetailScreen isEqualToString:@"Sale Off"]) {
        arrDataItem = [[NSMutableArray alloc] init];
        arrDataItem = arrDataItemSaleOffs;
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    }
}
- (void) createIceCreams {
    
    DataItem *iceCream1 = [[DataItem alloc] initWithName:@"Kem Vali"addPrice:@"$23" withImage:[UIImage imageNamed:@"cream1.jpg"] andSaleOff:@""];
    DataItem *iceCream2 = [[DataItem alloc] initWithName:@"Kem Dau" addPrice:@"$20" withImage:[UIImage imageNamed:@"cream2.jpg"] andSaleOff:@"-20%"];
    DataItem *iceCream3 = [[DataItem alloc] initWithName:@"Kem Bac Ha" addPrice:@"$21" withImage:[UIImage imageNamed:@"cream3.jpeg"] andSaleOff:@"-30%"];
    DataItem *iceCream4 = [[DataItem alloc] initWithName:@"Kem Dua" addPrice:@"$22" withImage:[UIImage imageNamed:@"cream4.jpeg"] andSaleOff:@""];
    DataItem *iceCream5 = [[DataItem alloc] initWithName:@"Kem Sua Chua" addPrice:@"$30" withImage:[UIImage imageNamed:@"cream5.jpeg"] andSaleOff:@""];
    DataItem *iceCream6 = [[DataItem alloc] initWithName:@"Kem Dau xanh" addPrice:@"$31" withImage:[UIImage imageNamed:@"cream6.jpg"] andSaleOff:@""];
    
    arrDataItem = [[NSMutableArray alloc] initWithObjects:iceCream1,iceCream2,iceCream3,iceCream4,iceCream5,iceCream6, nil];
    
    for (int i = 0; i < arrDataItem.count; i ++) {
        
        DataItem *dataItem = [[DataItem alloc] init];
        dataItem = [arrDataItem objectAtIndex:i];
        NSString *stringSaleOff = [NSString stringWithFormat:@"%@",dataItem.saleOff];
        
        if (![stringSaleOff isEqualToString:@""]) {
            
            [arrDataItemSaleOffs addObject:dataItem];
        }
    }
}

- (void) createDrinks {
    
    DataItem *drink1 = [[DataItem alloc] initWithName:@"Tra da" addPrice:@"$20" withImage:[UIImage imageNamed:@"drink1.jpeg"] andSaleOff:@""];
    DataItem *drink2 = [[DataItem alloc] initWithName:@"Tra Chanh" addPrice:@"$20" withImage:[UIImage imageNamed:@"drink2.jpeg"] andSaleOff:@"-10%"];
    DataItem *drink3 = [[DataItem alloc] initWithName:@"Nuoc Sau" addPrice:@"$20" withImage:[UIImage imageNamed:@"drink3.jpg"] andSaleOff:@"-20%"];
    DataItem *drink4 = [[DataItem alloc] initWithName:@"Tra Sen" addPrice:@"$20" withImage:[UIImage imageNamed:@"drink4.jpg"] andSaleOff:@""];
    DataItem *drink5 = [[DataItem alloc] initWithName:@"Capuchino" addPrice:@"$20" withImage:[UIImage imageNamed:@"drink5.jpeg"] andSaleOff:@"-30%"];
    DataItem *drink6 = [[DataItem alloc] initWithName:@"Viet Quat" addPrice:@"$20" withImage:[UIImage imageNamed:@"drink6.jpeg"] andSaleOff:@""];
    
    arrDataItem = [[NSMutableArray alloc] initWithObjects:drink1,drink2,drink3,drink4,drink5,drink6, nil];
    
    for (int i = 0; i < arrDataItem.count; i ++) {
        
        DataItem *dataItem = [[DataItem alloc] init];
        dataItem = [arrDataItem objectAtIndex:i];
        NSString *stringSaleOff = [NSString stringWithFormat:@"%@",dataItem.saleOff];
        
        if (![stringSaleOff isEqualToString:@""]) {
            
            [arrDataItemSaleOffs addObject:dataItem];
        }
    }
}

- (void) createBirthdays {
    
    DataItem *birthday1 = [[DataItem alloc] initWithName:@"Gato kem" addPrice:@"$10" withImage:[UIImage imageNamed:@"birthday1.jpg"] andSaleOff:@"-10%"];
    DataItem *birthday2 = [[DataItem alloc] initWithName:@"Gato Kem dau" addPrice:@"$20" withImage:[UIImage imageNamed:@"birthday2.jpeg"] andSaleOff:@""];
    DataItem *birthday3 = [[DataItem alloc] initWithName:@"Gato Xoan oc" addPrice:@"$30" withImage:[UIImage imageNamed:@"birthday3.jpg"] andSaleOff:@""];
    DataItem *birthday4 = [[DataItem alloc] initWithName:@"Gato Chuc mung" addPrice:@"$40" withImage:[UIImage imageNamed:@"birthday4.jpg"] andSaleOff:@""];
    DataItem *birthday5 = [[DataItem alloc] initWithName:@"Gato follow name" addPrice:@"$50" withImage:[UIImage imageNamed:@"birthday5.jpg"] andSaleOff:@""];
    DataItem *birthday6 = [[DataItem alloc] initWithName:@"Gato dua" addPrice:@"$10" withImage:[UIImage imageNamed:@"birthday6.jpg"] andSaleOff:@""];
    
    arrDataItem = [[NSMutableArray alloc] initWithObjects:birthday1,birthday2,birthday3,birthday4,birthday5,birthday6, nil];
    
    for (int i = 0; i < arrDataItem.count; i ++) {
        
        DataItem *dataItem = [[DataItem alloc] init];
        dataItem = [arrDataItem objectAtIndex:i];
        NSString *stringSaleOff = [NSString stringWithFormat:@"%@",dataItem.saleOff];
        
        if (![stringSaleOff isEqualToString:@""]) {
            
            [arrDataItemSaleOffs addObject:dataItem];
        }
    }
}

- (void) createCookies {
    
    DataItem *cookie1 = [[DataItem alloc] initWithName:@"Cookie 1" addPrice:@"$20" withImage:[UIImage imageNamed:@"cookie1.jpeg"] andSaleOff:@""];
    DataItem *cookie2 = [[DataItem alloc] initWithName:@"Cookie 2" addPrice:@"$20" withImage:[UIImage imageNamed:@"cookie2.jpeg"] andSaleOff:@""];
    DataItem *cookie3 = [[DataItem alloc] initWithName:@"Cookie 3" addPrice:@"$20" withImage:[UIImage imageNamed:@"cookie3.jpeg"] andSaleOff:@""];
    DataItem *cookie4 = [[DataItem alloc] initWithName:@"Cookie 4" addPrice:@"$20" withImage:[UIImage imageNamed:@"cookie4.jpeg"] andSaleOff:@""];
    DataItem *cookie5 = [[DataItem alloc] initWithName:@"Cookie 5" addPrice:@"$20" withImage:[UIImage imageNamed:@"cookie5.jpeg"] andSaleOff:@""];
    DataItem *cookie6 = [[DataItem alloc] initWithName:@"Cookie 6" addPrice:@"$20" withImage:[UIImage imageNamed:@"cookie6.jpeg"] andSaleOff:@""];
    
    arrDataItem = [[NSMutableArray alloc] initWithObjects:cookie1,cookie2,cookie3,cookie4,cookie5,cookie6, nil];
    
    for (int i = 0; i < arrDataItem.count; i ++) {
        
        DataItem *dataItem = [[DataItem alloc] init];
        dataItem = [arrDataItem objectAtIndex:i];
        NSString *stringSaleOff = [NSString stringWithFormat:@"%@",dataItem.saleOff];
        
        if (![stringSaleOff isEqualToString:@""]) {
            
            [arrDataItemSaleOffs addObject:dataItem];
        }
    }
}

- (void) createBreads {
   
    DataItem *bread1 = [[DataItem alloc] initWithName:@"Bread 1" addPrice:@"$15" withImage:[UIImage imageNamed:@"bread1.jpeg"] andSaleOff:@""];
    DataItem *bread2 = [[DataItem alloc] initWithName:@"Bread 2" addPrice:@"$15" withImage:[UIImage imageNamed:@"bread2.jpeg"] andSaleOff:@""];
    DataItem *bread3 = [[DataItem alloc] initWithName:@"Bread 3" addPrice:@"$15" withImage:[UIImage imageNamed:@"bread3.jpeg"] andSaleOff:@""];
    DataItem *bread4 = [[DataItem alloc] initWithName:@"Bread 4" addPrice:@"$15" withImage:[UIImage imageNamed:@"bread4.jpeg"] andSaleOff:@""];
    DataItem *bread5 = [[DataItem alloc] initWithName:@"Bread 5" addPrice:@"$15" withImage:[UIImage imageNamed:@"bread5.jpeg"] andSaleOff:@""];
    DataItem *bread6 = [[DataItem alloc] initWithName:@"Bread 6" addPrice:@"$15" withImage:[UIImage imageNamed:@"bread6.jpeg"] andSaleOff:@""];
    
    arrDataItem = [[NSMutableArray alloc] initWithObjects:bread1,bread2,bread3,bread4,bread5,bread6, nil];
    
    for (int i = 0; i < arrDataItem.count; i ++) {
        
        DataItem *dataItem = [[DataItem alloc] init];
        dataItem = [arrDataItem objectAtIndex:i];
        NSString *stringSaleOff = [NSString stringWithFormat:@"%@",dataItem.saleOff];
        
        if (![stringSaleOff isEqualToString:@""]) {
            
            [arrDataItemSaleOffs addObject:dataItem];
        }
    }
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrDataItem.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifer = @"CellIdentifer";
    
    CustomTableViewCell *cell = (CustomTableViewCell *) [tableView dequeueReusableCellWithIdentifier:cellIdentifer];
    if (cell == nil) {
        
        NSArray *xib = [[NSBundle mainBundle] loadNibNamed:@"CustomTableViewCell" owner:self options:nil];
        cell = [xib objectAtIndex:0];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    DataItem *dateItem = [arrDataItem objectAtIndex:indexPath.row];
    
    cell.image.image = dateItem.image;
    cell.labelname.text = dateItem.name;
    cell.lablePrice.text = dateItem.price;
    cell.labelSaleOff.text = dateItem.saleOff;
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    DataItem *dataItem = [[DataItem alloc] init];
    dataItem = [arrDataItem objectAtIndex:indexPath.row];
    
    ShowDetailScreenViewController *showDetailScreenViewController = [[ShowDetailScreenViewController alloc] init];
    showDetailScreenViewController.imageFoodpush = dataItem.image;
    showDetailScreenViewController.foodNamepush = dataItem.name;
    showDetailScreenViewController.labelPricepush = dataItem.price;
    showDetailScreenViewController.labelSaleOffpush = dataItem.saleOff;
    
    [self.navigationController pushViewController:showDetailScreenViewController animated:YES];
}
- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 80;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
