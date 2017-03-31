//
//  ViewController.m
//  PicnicRUs
//
//  Created by Sophia Tung on 3/8/17.
//  Copyright © 2017 Picnic R Us. All rights reserved.
//

#import "HomeViewController.h"
#import "CustomerOrderRequestTableViewController.h"
#import "EmployeeManagementTableViewController.h"
#import "InventoryTableViewController.h"

@interface HomeViewController ()

@property IBOutlet UIButton *customerButton, *employeeButton;

@end

@implementation HomeViewController

- (instancetype)init
{
    self = [super initWithNibName:@"HomeViewController" bundle:nil];
    if (self)
    {
        self.title = @"Welcome";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIBarButtonItem *inventoryItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(checkInventory)];
    self.navigationItem.rightBarButtonItem = inventoryItem;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)customerButtonPressed:(id)sender
{
    CustomerOrderRequestTableViewController *controller = [[CustomerOrderRequestTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    [self.navigationController pushViewController:controller animated:YES];
}

- (IBAction)employeeButtonPressed:(id)sender
{
    EmployeeManagementTableViewController *controller = [[EmployeeManagementTableViewController alloc] init];
    [self.navigationController pushViewController:controller animated:YES];
}

- (void)checkInventory
{
    InventoryTableViewController *inventory = [[InventoryTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    [self.navigationController pushViewController:inventory animated:YES];
}

@end
