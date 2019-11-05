//
//  ViewControllerDetails.h
//  iOSTrainingDay7
//
//  Created by OPS on 11/5/19.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewControllerDetails : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (weak, nonatomic) IBOutlet UILabel *photoLabel;

@property (assign, nonatomic) NSString *photo;
@property (assign, nonatomic) NSString *name;

@end

NS_ASSUME_NONNULL_END
