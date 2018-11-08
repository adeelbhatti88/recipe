//
//  ViewController.h
//  TablehomeworkFinal
//
//  Created by Studio 300 Patron on 10/4/18.
//  Copyright © 2018 Studio 300 Patron. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    
    NSDictionary *cod;
    NSArray *meals;
    IBOutlet UITableView *myTableView;
}

@property (nonatomic, retain) NSDictionary *cod;
@property (nonatomic, retain) NSArray *meals;
@property (nonatomic, retain) UITableView *myTableView;


@end

