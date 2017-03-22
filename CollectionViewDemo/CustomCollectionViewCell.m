//
//  CustomCollectionViewCell.m
//  CollectionViewDemo
//
//  Created by Pierre Binon on 2017-03-22.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "CustomCollectionViewCell.h"



@implementation CustomCollectionViewCell

- (void) configureWithCatAndDog: (NSIndexPath *) indexPath {
    
    NSArray *images = @[@"cat", @"dog"];
    
    //Returns 0 or 1
    NSInteger index = indexPath.item % images.count;
    
    self.label.text = [NSString stringWithFormat: @"%d", (int)indexPath.item];
    self.imageView.image = [UIImage imageNamed: images[index]];
}

@end
