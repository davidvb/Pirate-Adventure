//
//  MADViewController.m
//  Pirate Adventure
//
//  Created by Dean Murphy on 24/03/2014.
//  Copyright (c) 2014 Murphy Apps. All rights reserved.
//

#import "MADViewController.h"
#import "MADFactory.h"

@interface MADViewController ()

@end

@implementation MADViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    MADFactory *array = [[MADFactory alloc]init];
    [array tiles];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButtonPressed:(UIButton *)sender {
}

- (IBAction)northButtonPressed:(UIButton *)sender {
}

- (IBAction)eastButtonPressed:(UIButton *)sender {
}

- (IBAction)southButtonPressed:(UIButton *)sender {
}

- (IBAction)westButtonPressed:(UIButton *)sender {
}

@end
