//
//  ViewController.m
//  FlighMath
//
//  Created by Marcin Pędzimąż on 20.01.2016.
//  Copyright © 2016 Marcin Małysz. All rights reserved.
//

#import "ViewController.h"
#import "math.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%ld" , [self factorial:5]);
    NSLog(@"%lf", [self sqrt:9]);
    
}

- (NSInteger)factorial:(NSInteger)a {
    
    if (a < 0) {
        NSLog(@"Error");
        return -1;
    }
    NSInteger b = 1;
    for (NSInteger i = 2 ; i <= a; i++) {
        b*=i;
    }
    return b;
    
}

- (CGFloat) sqrt:(CGFloat)c {
    
    return sqrt(c);
    
}

- (NSNumber *)sqrt:(NSNumber *)number{
    
    return [NSNumber numberWithDouble: sqrt([number doubleValue])];
}

- (NSInteger)factorial:(NSInteger)number{

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
