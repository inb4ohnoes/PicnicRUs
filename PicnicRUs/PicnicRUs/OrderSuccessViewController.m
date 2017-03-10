//
//  OrderSuccessViewController.m
//  PicnicRUs
//
//  Created by Sophia Tung on 3/9/17.
//  Copyright © 2017 Picnic R Us. All rights reserved.
//

#import "OrderSuccessViewController.h"

@interface OrderSuccessViewController ()

@property IBOutlet UILabel *nameLabel, *orderNumberLabel;

@end

@implementation OrderSuccessViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Success!";
    // Do any additional setup after loading the view from its nib.
    
    UIBarButtonItem *exitItem = [[UIBarButtonItem alloc] initWithTitle:@"Exit" style:UIBarButtonItemStyleDone target:self action:@selector(exitFlow)];
    self.navigationItem.leftBarButtonItem = exitItem;
}

- (void)exitFlow
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setName:(NSString *)name andOrderNumber:(NSString *)orderNumber
{
    self.nameLabel.text = [NSString stringWithFormat:@"%@,", name];
    
    self.orderNumberLabel.text = [NSString stringWithFormat:@"#%@", orderNumber];
}

@end
