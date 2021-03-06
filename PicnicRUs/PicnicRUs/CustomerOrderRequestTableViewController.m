//
//  CustomerOrderRequestTableViewController.m
//  PicnicRUs
//
//  Created by Sophia Tung on 3/9/17.
//  Copyright © 2017 Picnic R Us. All rights reserved.
//

#import "CustomerOrderRequestTableViewController.h"
#import "OrderSuccessViewController.h"
#import "OrderQuoteViewController.h"

@interface CustomerOrderRequestTableViewController ()

@end

@implementation CustomerOrderRequestTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    self.title = @"New Order";
    
    UIBarButtonItem *rightBarItem = [[UIBarButtonItem alloc] initWithTitle:@"Submit" style:UIBarButtonItemStyleDone target:self action:@selector(submit)];
    self.navigationItem.rightBarButtonItem = rightBarItem;
}

- (void)submit
{
    OrderSuccessViewController *controller = [[OrderSuccessViewController alloc] init];
    [controller setName:@"Jane Doe" andOrderNumber:@"14722"];
    [self.navigationController pushViewController:controller animated:YES];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0)
    {
        return 5;//first last street city zip
    } else if (section == 1)
    {
        return 5;//sample menu
    } else if (section == 2)
    {
        return 3;
    } else if (section == 3)
    {
        return 4;//name cardno date ccv
    } else if (section == 4)
    {
        return 1;//calculate quote
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier"];
    
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    //super temporary
    if (indexPath.section == 0)
    {
        //customer information
        if (indexPath.row == 0)
        {
            cell.textLabel.text = @"Jane";
        } else if (indexPath.row == 1)
        {
            cell.textLabel.text = @"Doe";
        } else if (indexPath.row == 2)
        {
            cell.textLabel.text = @"House # and Street";
        } else if (indexPath.row == 3)
        {
            cell.textLabel.text = @"City";
        } else if (indexPath.row == 4)
        {
            cell.textLabel.text = @"Zip";
        }
    } else if (indexPath.section == 1)
    {
        //Menu choice
        if (indexPath.row == 0)
        {
            cell.textLabel.text = @"Egg Salad Sandwich";
            cell.imageView.image = [UIImage imageNamed:@"CheckMark"];
        } else if (indexPath.row == 1)
        {
            cell.textLabel.text = @"Pickle Sandwich";
        } else if (indexPath.row == 2)
        {
            cell.textLabel.text = @"Roast Beef Sandwich";
            cell.imageView.image = [UIImage imageNamed:@"CheckMark"];
        } else if (indexPath.row == 3)
        {
            cell.textLabel.text = @"Some Other Sandwich";
            cell.imageView.image = [UIImage imageNamed:@"CheckMark"];
        } else if (indexPath.row == 4)
        {
            cell.textLabel.text = @"Grilled Cheese";
        }
    } else if (indexPath.section == 2)
    {
        if (indexPath.row == 0)
        {
            cell.textLabel.text = @"John Smith";
            cell.imageView.image = [UIImage imageNamed:@"CheckMark"];
        } else if (indexPath.row == 1)
        {
            cell.textLabel.text = @"Jane Smith";
        } else if (indexPath.row == 2)
        {
            cell.textLabel.text = @"Jane Doe";
            cell.imageView.image = [UIImage imageNamed:@"CheckMark"];
        }
    } else if (indexPath.section == 3)
    {
        //payment information
        if (indexPath.row == 0)
        {
            cell.textLabel.text = @"Full Name on Card";
        } else if (indexPath.row == 1)
        {
            cell.textLabel.text = @"Credit Card #";
        } else if (indexPath.row == 2)
        {
            cell.textLabel.text = @"Expiration Date";
        } else if (indexPath.row == 3)
        {
            cell.textLabel.text = @"CCV";
        }
    } else if (indexPath.section == 4)
    {
        if (indexPath.row == 0)
        {
            cell.textLabel.text = @"Calculate Quote";
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
    }
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 0)
    {
        return @"Customer Information (prefilled)";
    } else if (section == 1)
    {
        return @"Menu Selection (prefilled)";
    } else if (section == 2)
    {
        return @"Choose Staff (prefilled)";
    } else if (section == 3)
    {
        return @"Payment Details (prefilled)";
    } else if (section == 4)
    {
        return @"Price";
    }
    return nil;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.section == 4 && indexPath.row == 0)
    {
        OrderQuoteViewController *quote = [[OrderQuoteViewController alloc] init];
        [self.navigationController pushViewController:quote animated:YES];
    }
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
