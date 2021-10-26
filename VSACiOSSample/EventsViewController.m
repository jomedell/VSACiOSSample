//
//  EventsViewController.m
//  VSACiOSSample
//
//  Created by Jorge Medellin on 10/26/21.
//

#import "EventsViewController.h"
@import AppCenter;
@import AppCenterAnalytics;

@interface EventsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *EventLabel;
@property (weak, nonatomic) IBOutlet UIButton *EventButton;

@end

@implementation EventsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // App Center SDK - Analytics
    // send id
    NSUUID *installId = [MSACAppCenter  installId];
    // send user id
    [MSACAppCenter setUserId:@"Jorge"];
    
}

- (IBAction)EventAction:(id)sender {
    
    // App Center SDK
    NSDictionary *properties = @{@"Color 1" : @"Red", @"Color 2" : @"blue"};
    [MSACAnalytics trackEvent:@"Clicked Analytics Button" withProperties: properties];
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
