//
//  ViewControllerPhotoAlbum.m
//  iOSTrainingDay7
//
//  Created by OPS on 11/5/19.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "ViewControllerPhotoAlbum.h"
#import "Cell/CollectionCellAlbum.h"
#import "ViewControllerDetails.h"

@interface ViewControllerPhotoAlbum ()
@end
@implementation ViewControllerPhotoAlbum

NSString *photo;
NSString *name;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.collectionAlbum registerNib:[UINib nibWithNibName:@"ColectionCellAlbum" bundle:nil] forCellWithReuseIdentifier:@"AlbumCellCollection"];
    
    _albumArray = [[NSArray alloc] initWithObjects:
                         @{@"photo" : @"ic_1",
                           @"name" : @"Grizz",
                           },
                         @{@"photo" : @"ic_2",
                           @"name" : @"Ice Bear",
                           },
                         @{@"photo" : @"ic_3",
                           @"name" : @"Ice Bear IG",
                           },
                         @{@"photo" : @"ic_4",
                           @"name" : @"Pan-pan",
                           },
                         @{@"photo" : @"ic_5",
                           @"name" : @"We Bare Bears",
                           },
                         @{@"photo" : @"ic_6",
                           @"name" : @"Cute We Bare Bears",
                           },
                         @{@"photo" : @"ic_7",
                           @"name" : @"We Bare Bears In House",
                           },
                         @{@"photo" : @"ic_8",
                           @"name" : @"We Bare Bears Logo",
                           },
                         @{@"photo" : @"ic_9",
                           @"name" : @"We Bare Bears Game Logo",
                           },
                         @{@"photo" : @"ic_10",
                           @"name" : @"We Bare Bears Opening",
                           }, nil];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.albumArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionCellAlbum *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"AlbumCellCollection" forIndexPath:indexPath];
    NSDictionary *dict = [self.albumArray objectAtIndex:indexPath.item];
    cell.photoImageView.image = [UIImage imageNamed:dict[@"photo"]];
    cell.photoLabel.text = dict[@"name"];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGRect screenBound  = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    
    CGFloat computedHeight = screenSize.height / 3;
    CGFloat computedWidth = screenSize.width / 2;
    return CGSizeMake(computedWidth, computedHeight);
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *dict = [self.albumArray objectAtIndex:indexPath.item];
    photo = dict[@"photo"];
    name = dict[@"name"];
    [self performSegueWithIdentifier:@"collectionToDetails" sender:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"collectionToDetails"]) {
        ViewControllerDetails *vcDetails = [segue destinationViewController];
        vcDetails.photo = photo;
        vcDetails.name = name;
    }
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
