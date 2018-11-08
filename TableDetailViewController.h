//
//  TableDetailViewController.h
//  TablehomeworkFinal
//
//  Created by Studio 300 Patron on 10/4/18.
//  Copyright © 2018 Studio 300 Patron. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableDetailViewController : UIViewController
@property (nonatomic) NSString *inLabelText;
@property (nonatomic) NSInteger inRow;
@property (nonatomic) NSInteger inSection;

@property (nonatomic) IBOutlet UILabel *outLabel;
@property (nonatomic) IBOutlet UILabel *showRow;
@property (nonatomic) IBOutlet UILabel *showSection;


@end
