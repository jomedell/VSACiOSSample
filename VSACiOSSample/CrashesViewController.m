//
//  CrashesViewController.m
//  VSACiOSSample
//
//  Created by Jorge Medellin on 10/26/21.
//

#import "CrashesViewController.h"
@import AppCenter;
@import AppCenterCrashes;

@interface CrashesViewController ()
@property (weak, nonatomic) IBOutlet UILabel *CrashesLabel;
@property (weak, nonatomic) IBOutlet UIButton *CrashesButton;

@end

@implementation CrashesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (IBAction)CrashesAction:(id)sender {
    
    // App Center SDK - Crashes
    [MSACCrashes generateTestCrash];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
