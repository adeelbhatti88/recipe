//
//  tabBarViewController.h
//  TablehomeworkFinal
//
//  Created by Studio 300 Patron on 10/30/18.
//  Copyright © 2018 Studio 300 Patron. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tabBarViewController : UITabBarController
{
    IBOutlet UIImageView *imageView;
}

@property (strong, nonatomic) NSString *inLabelText;
@property (nonatomic) NSInteger inRow;
@property (nonatomic) NSInteger inSection;

@property (nonatomic, retain) UIImageView *imageView;

@end
