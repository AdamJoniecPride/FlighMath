//
//  ViewController.m
//  FlighMath
//
//  Created by Marcin Pędzimąż on 20.01.2016.
//  Copyright © 2016 Marcin Małysz. All rights reserved.
//

#import "ViewController.h"
#import <math.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%ld" , [self factorial:5]);
    NSLog(@"%@", [self sqrt:@2.25]);
    
}

- (NSNumber *)sqrt:(NSNumber *)number{
    
    return [NSNumber numberWithDouble: sqrt([number doubleValue])];
}

- (NSInteger)factorial:(NSInteger)number{

    if (number < 0) {
        return -1;
    }
    
    NSInteger answer = 1;
    
    for (NSInteger count = 2; count <= number; count++) {
        
        answer *= count;
    }
    
    return answer;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
