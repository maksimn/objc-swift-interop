//
//  ViewController.m
//  ObjcSwiftInterop
//
//  Created by Maksim Ivanov on 22/03/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

#import "ViewController.h"
#import "ObjcSwiftInterop-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    StringList *list = [StringList new];
    
    [list addWithVal:@"Asdfsadf"];
    [list addWithVal:@"Asdsdffsadf"];
    
    NSLog(@"size = %ld", (long)[list size]);
    NSLog(@"list[0] = %@", [list getWithI:0]);
    NSLog(@"list[1] = %@", [list getWithI:1]);
}


@end
