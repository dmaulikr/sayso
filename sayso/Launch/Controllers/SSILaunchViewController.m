//
//  SSILaunchViewController.m
//  sayso
//
//  Created by Kevin Muldoon on 1/16/17.
//  Copyright © 2017 Survey Sampling International, LLC. All rights reserved.
//

#import "SSILaunchViewController.h"
#import "SSILaunchScreenAnimation.h"

static NSString *SSIDashboardStoryboardSegueIdentifier = @"DashboardStoryboardSegueIdentifier";
static NSString *SSIRegisterStoryboardSegueIdentifier = @"RegisterStoryboardSegueIdentifier";

@interface SSILaunchViewController ()
@property (weak, nonatomic) IBOutlet SSILaunchScreenAnimation *animation;

@end

@implementation SSILaunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.animation addUntitled1AnimationCompletionBlock:^(BOOL finished) {
        [self performSelector:@selector(performSegue:) withObject:self afterDelay:1.35f];
    }];
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

- (void)performSegue:(id)sender {
    [self performSegueWithIdentifier:SSIRegisterStoryboardSegueIdentifier sender:self];
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
