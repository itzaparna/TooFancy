//
//  BRFirstViewController.m
//  TooFancyTabs
//
//  Created by Aparna Deshpande on 4/7/14.
//  Copyright (c) 2014 Aparna Deshpande. All rights reserved.
//

#import "BRTableViewController.h"

#import "BRHttpClient.h"

static NSString *const kCellIdentifier = @"CellId";

@interface BRTableViewController ()
@property (nonatomic) IBOutlet UITableView *tableView;
@end

@implementation BRTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [BRHttpClient getStoresWithBlock:^(NSArray *tweets, NSError *error) {
        if (error) {
          
        }
    }];

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UITableViewDataSource methods

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kCellIdentifier];
    }
    cell.textLabel.text = @"HAHAHAHHAHA";
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}


#pragma mark - UITableViewDelegate methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
 
    
}

- (void)dealloc {
    [super dealloc];
}


@end
