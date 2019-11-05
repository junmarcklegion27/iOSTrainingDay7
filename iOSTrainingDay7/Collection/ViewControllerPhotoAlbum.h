//
//  ViewControllerPhotoAlbum.h
//  iOSTrainingDay7
//
//  Created by OPS on 11/5/19.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewControllerPhotoAlbum : UIViewController<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionAlbum;
@property (copy, readwrite) NSArray *albumArray;
@end

NS_ASSUME_NONNULL_END
