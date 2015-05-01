//
//  CounterViewController.m
//  umm
//
//  Created by Matthew Faluotico on 4/30/15.
//  Copyright (c) 2015 MPF. All rights reserved.
//

#import "CounterViewController.h"
#import "CounterButton.h"

@interface CounterViewController ()

@end

@implementation CounterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(start) name:@"Start" object:nil];
    
    CounterButton * view = [[CounterButton alloc] initWithColor:[UIColor redColor] andWord:@"bacon"];
    [self.view addSubview:view];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) start {
    NSLog(@"ye");
    [self.navigationController popViewControllerAnimated:NO];
}

@end
