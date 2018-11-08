//
//  tabBarViewController.m
//  TablehomeworkFinal
//
//  Created by Studio 300 Patron on 10/30/18.
//  Copyright © 2018 Studio 300 Patron. All rights reserved.
//

#import "tabBarViewController.h"
#import "tab1VC.h"
#import "tab2VC.h"
#import "tab3VC.h"
#import "tab4VC.h"

@interface tabBarViewController ()

@end

@implementation tabBarViewController
@synthesize inSection, inRow, inLabelText, imageView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    tab1VC *tab1;
    tab1 = [[self viewControllers]objectAtIndex:0];
    tab1.inLabelText = inLabelText;
    tab1.inRow = inRow;
    tab1.inSection = inSection;
    
//    //object at index is what tab we are on, it is in array language so tab 2 is index 1.
    tab2VC *tab2;
    tab2 = [[self viewControllers]objectAtIndex:1];
    tab2.inLabelText = inLabelText;
    tab2.inRow = inRow;
    tab2.inSection = inSection;
    
    //    //object at index is what tab we are on, it is in array language so tab 2 is index 1.
    tab3VC *tab3;
    tab3 = [[self viewControllers]objectAtIndex:2];
    tab3.inLabelText = inLabelText;
    tab3.inRow = inRow;
    tab3.inSection = inSection;
    tab3.imageView = imageView;
//    [tab3.imageView setImage:[UIImage imageNamed:@"oatmeal.jpg"]];
//    [tab3.imageView setHidden:NO];
//
    tab4VC *tab4;
    tab4 = [[self viewControllers]objectAtIndex:3];
    tab4.inLabelText = inLabelText;
    tab4.inRow = inRow;
    tab4.inSection = inSection;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
