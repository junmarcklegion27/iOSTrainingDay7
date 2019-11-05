//
//  ViewControllerDetails.m
//  iOSTrainingDay7
//
//  Created by OPS on 11/5/19.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "ViewControllerDetails.h"

@interface ViewControllerDetails ()

@end

@implementation ViewControllerDetails

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _photoImageView.image = [UIImage imageNamed:_photo];
    _photoLabel.text = _name;
    
    
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
