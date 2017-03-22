//
//  CustomCollectionViewCell.h
//  CollectionViewDemo
//
//  Created by Pierre Binon on 2017-03-22.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface CustomCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (void) configureWithCatAndDog: (NSIndexPath *) indexPath;

@end
