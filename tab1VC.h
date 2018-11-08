//
//  tab1VC.h
//  TablehomeworkFinal
//
//  Created by Studio 300 Patron on 10/30/18.
//  Copyright © 2018 Studio 300 Patron. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tab1VC : UIViewController 


@property (strong, nonatomic) NSString *inLabelText;
@property (nonatomic) NSInteger inRow;
@property (nonatomic) NSInteger inSection;

@property (nonatomic) IBOutlet UILabel *outLabel;
@property (nonatomic) IBOutlet UILabel *showRow;
@property (nonatomic) IBOutlet UILabel *showSection;

@end
