//
//  CollectionCellAlbum.h
//  iOSTrainingDay7
//
//  Created by OPS on 11/5/19.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CollectionCellAlbum : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (weak, nonatomic) IBOutlet UILabel *photoLabel;

@end

NS_ASSUME_NONNULL_END
