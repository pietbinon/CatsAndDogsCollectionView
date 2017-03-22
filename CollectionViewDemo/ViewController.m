//
//  ViewController.m
//  CollectionViewDemo
//
//  Created by Pierre Binon on 2017-03-22.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "ViewController.h"
#import "CustomCollectionViewCell.h"



@interface ViewController () <UICollectionViewDataSource>

@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




#pragma mark - UICollectionViewDataSource

//1. Number of sections
- (NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
}


//2. Number of items in section
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 100;
}


//3. Cell for the specified section and item index. NSIndexPath
// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
//    indexPath has 2 components:
//    NSInteger section = indexPath.section;
//    NSInteger item = indexPath.item;

    //Replace UICollectionViewCell with CustomCollectionViewCell
    //UICollectionViewCell * cell;
    CustomCollectionViewCell *cell;
    
    //Replace the following if creating a custom collection view cell
    //cell = [collectionView dequeueReusableCellWithReuseIdentifier: @"cell" forIndexPath: indexPath];//Never touch to indexPath
    cell = [collectionView dequeueReusableCellWithReuseIdentifier: @"customCollectionViewCell" forIndexPath: indexPath];//Never touch to indexPath!!!
    
    cell.label.text = [NSString stringWithFormat: @"%d", (int)indexPath.item];
    [cell configureWithCatAndDog: indexPath];
    return cell;
}

//=====================================================================================================================
//1. In the current view controller in storyboard, drag a collection view (not a collection view controller) and use constraints to make fit all space
//2. Bring label into cell - If to cover the whole space of the cell, use constraints & update frames with "Items of New Constraints"
//3. Right click on the collection view in scene
//4. Control drag data source in view controller (in scene)
//5. Add protocol in viewcontroller.m (<UICollectionViewDataSource>)
//6. Add the 3 methods (2 required - 1 optional) from the datasource
//7. Put the identifier @"cell" in storyboard in the attribute inspector
//8. Create a CustomCollectionViewCell class (inherits from UICollectionViewCell)
//9. Link the new class in storyboard (choose cell in scene and go in identity inspector and choose the name of the class that was just created
//10. Add image to cell
//11. Rename the identifier cell to @"customCollectionViewCell"
//12. ...
//=====================================================================================================================

@end
