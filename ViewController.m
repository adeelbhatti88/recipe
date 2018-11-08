//
//  ViewController.m
//  TablehomeworkFinal
//
//  Created by Studio 300 Patron on 10/4/18.
//  Copyright © 2018 Studio 300 Patron. All rights reserved.
//

#import "ViewController.h"

#import "TableDetailViewController.h"
#import "tabBarViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize cod, meals, myTableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // set up path to plist file
    NSString *path = [[NSBundle mainBundle] pathForResource:@"meals" ofType:@"plist"];
    
    // load plist dictionary
    NSDictionary *dataDict = [[NSDictionary alloc] initWithContentsOfFile:path];
    
    // link to dictionary to our object
    self.cod = dataDict;
    
    //get all the faculties
    NSArray *array = [[self.cod allKeys] sortedArrayUsingSelector:@selector(compare:)];
    
    self.meals = array;
    
    [self.myTableView setSeparatorColor:[UIColor orangeColor]];
    
  

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark ---------------
#pragma mark UITableViewDelegate protocols

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    
    return [self.meals count];
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSString *myFaculty = [self.meals objectAtIndex:section];
    NSArray *facultyCourses = [self.cod objectForKey:myFaculty];
    
    return [facultyCourses count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"cell";  // be sure that sell identifier in SB is set same
    
    UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:cellIdentifier];
    }
    // Configure the cell.
    
    // Get faculty in section
    NSString *myFaculty = [self.meals objectAtIndex:[indexPath section]];
    
    // courses within faculty
    NSArray *facultyCourses = [self.cod objectForKey:myFaculty];
    
    cell.textLabel.text = [facultyCourses objectAtIndex:[indexPath row]];
    
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    return [meals objectAtIndex:section];
    
    
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    
    NSString *myFaculty = [meals objectAtIndex:section];
    NSArray *facultyCourses = [cod objectForKey:myFaculty];
    
    NSString *myFooterText = [NSString stringWithFormat:@"%lu Meals", [facultyCourses count]];
    return myFooterText;
    
}

//when user selects a row, you are saying
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [self performSegueWithIdentifier:@"tableDetail" sender:self];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    NSLog(@"Segue identifier is %@", [segue identifier]);
    
    tabBarViewController *tabBarVC = [segue destinationViewController];
    
    if ([[segue identifier] isEqualToString:@"tableDetail"]) {
        
        TableDetailViewController *detailVC = [segue destinationViewController];
        
        // index path to row that's selected - you don't need to store row, or
        // section in global .....
        
        NSIndexPath *myIndexPath = [self.myTableView indexPathForSelectedRow];
        
        // Get Row Number
        NSString *myFaculty = [self.meals objectAtIndex:[myIndexPath section]];
        NSArray *facultyCourses = [self.cod objectForKey:myFaculty];
        NSInteger row = [myIndexPath row];
        NSInteger section = [myIndexPath section];
        
        // Pass parameters to VC
        //we are setting paramaters passing to next view controller
        detailVC.inLabelText = [facultyCourses objectAtIndex:[myIndexPath row]];
        detailVC.inRow = row;
        detailVC.inSection = section;
        
        
    }
    
}


@end
