//
//  ViewController.m
//  RestaurentMenuApp
//
//  Created by lab on 9/24/18.
//  Copyright © 2018 digicon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    
    NSArray *menuItemNames;
    NSArray *menuItemImages;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    menuItemNames = [NSArray arrayWithObjects:@"Burger",@"Delicious Pizza",@"French Fry",@"Noodles",@"Pizza",@"Roll",@"Various Items", nil];
    
    menuItemImages = [NSArray arrayWithObjects:@"burger",@"delicious pizza",@"french fry",@"noodles",@"pizza",@"roll",@"various items", nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [menuItemNames count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *sampleIdentifier = @"Foods Item";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:sampleIdentifier];
    
    if(cell == nil){
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:sampleIdentifier];
    }
    
    cell.textLabel.text = [menuItemNames objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[menuItemImages objectAtIndex:indexPath.row]];
    
    return cell;
}


@end
