//
//  PhotoViewController.m
//  LKAssetsLibrary
//
//  Created by Hiroshi Hashiguchi on 2014/05/18.
//  Copyright (c) 2014年 lakesoft. All rights reserved.
//

#import "PhotoViewController.h"
#import "PhotoCell.h"

@interface PhotoViewController ()
@end

@implementation PhotoViewController
- (void)_didChangeCategory:(NSNotification*)notification
{
    [self.collectionView reloadData];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
//    [NSNotificationCenter.defaultCenter addObserver:self
//                                           selector:@selector(_didChangeCategory:)
//                                               name:LKAssetsGroupDidChangeCategoryNotification
//                                             object:NO];
}

- (void)viewWillAppear:(BOOL)animated
{
//    [self.collectionView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:self.photoIndex inSection:0]
//                                atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally
//                                        animated:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [NSNotificationCenter.defaultCenter removeObserver:self];
}


#pragma mark - UICollectionViewDatasource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 0;
//return self.subGroup.numberOfAssets;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
//    PhotoCell* cell = (PhotoCell*)[collectionView dequeueReusableCellWithReuseIdentifier:@"PhotoCell"
//                                                                            forIndexPath:indexPath];
//    LKAsset* asset = [self.subGroup assetAtIndex:indexPath.row];
//    cell.imageView.image = asset.fullScreenImage;
//    return cell;
}


@end
