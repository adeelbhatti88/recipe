//
//  tab3VC.h
//  TablehomeworkFinal
//
//  Created by Studio 300 Patron on 11/1/18.
//  Copyright © 2018 Studio 300 Patron. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tab3VC : UIViewController {
    
    IBOutlet UIImageView *imageView;
}

@property (strong, nonatomic) NSString *inLabelText;
@property (nonatomic) NSInteger inRow;
@property (nonatomic) NSInteger inSection;

@property (nonatomic) IBOutlet UILabel *showSection;
@property (nonatomic) IBOutlet UILabel *outLabel;
@property (nonatomic) IBOutlet UILabel *showRow;

@property (nonatomic, retain) UIImageView *imageView;



@end
