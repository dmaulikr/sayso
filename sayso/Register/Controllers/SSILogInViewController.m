//
//  SSILogInViewController.m
//  sayso
//
//  Created by Kevin Muldoon on 1/18/17.
//  Copyright © 2017 Survey Sampling International, LLC. All rights reserved.
//

#import "SSILogInViewController.h"
#import "SSIAlertControllerFactory.h"

@interface SSILogInViewController ()

@end

@implementation SSILogInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)socialLoginButtonAction:(UIButton *)sender {
    NSLog(@"%u", sender.tag);

}

- (IBAction)helpButtonAction:(id)sender {
    
    [self presentViewController:[SSIAlertControllerFactory helpIsOnTheWayAlert] animated:YES completion:nil];
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end