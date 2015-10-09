//
//  ViewController.m
//  CalculatorSample
//
//  Created by Hoàng Tiến on 10/8/15.
//  Copyright © 2015 Hoàng Tiến. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    float a;
    float b;
    float ketQua;
    NSString *str;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    a = 0;
    b = 0;
    ketQua = 0;
    str = NULL;
    self.view.backgroundColor = [UIColor lightGrayColor];
}
- (IBAction)num0:(id)sender {
    NSString *num = self.display.text;
    num = [num stringByAppendingString:@"0"];
    [self.display setText:num];
}
- (IBAction)num1:(id)sender {
    NSString *num = self.display.text;
    num = [num stringByAppendingString:@"1"];
    [self.display setText:num];
}
- (IBAction)num2:(id)sender {
    NSString *num = self.display.text;
    num = [num stringByAppendingString:@"2"];
    [self.display setText:num];
}
- (IBAction)num3:(id)sender {
    NSString *num = self.display.text;
    num = [num stringByAppendingString:@"3"];
    [self.display setText:num];
}
- (IBAction)num4:(id)sender {
    NSString *num = self.display.text;
    num = [num stringByAppendingString:@"4"];
    [self.display setText:num];
}
- (IBAction)num5:(id)sender {
    NSString *num = self.display.text;
    num = [num stringByAppendingString:@"5"];
    [self.display setText:num];
}
- (IBAction)num6:(id)sender {
    NSString *num = self.display.text;
    num = [num stringByAppendingString:@"6"];
    [self.display setText:num];
}
- (IBAction)num7:(id)sender {
    NSString *num = self.display.text;
    num = [num stringByAppendingString:@"7"];
    [self.display setText:num];
}
- (IBAction)num8:(id)sender {
    NSString *num = self.display.text;
    num = [num stringByAppendingString:@"8"];
    [self.display setText:num];
}
- (IBAction)num9:(id)sender {
    NSString *num = self.display.text;
    num = [num stringByAppendingString:@"9"];
    [self.display setText:num];
}
- (IBAction)CClear:(id)sender {
    [self.display setText:NULL];
    a = 0;
    b = 0;
    ketQua = 0;
    str = NULL;
}
- (IBAction)chia:(id)sender {
    NSString *num = self.display.text;
    str = @"/";
    a = [num floatValue];
    [self.display setText:NULL];
}
- (IBAction)nhan:(id)sender {
    NSString *num = self.display.text;
    str = @"X";
    a = [num floatValue];
    [self.display setText:NULL];
}
- (IBAction)tru:(id)sender {
    NSString *num = self.display.text;
    str = @"-";
    a = [num floatValue];
    [self.display setText:NULL];
}
- (IBAction)cong:(id)sender {
    NSString *num = self.display.text;
    str = @"+";
    a = [num floatValue];
    [self.display setText:NULL];
}
- (IBAction)ketQua:(id)sender {
    NSString *num = self.display.text;
    b = [num floatValue];
    
    if([str isEqualToString:@"+"]){
        ketQua = a + b;
    }
    else if([str isEqualToString:@"-"]){
        ketQua = a - b;
    }
    else if([str isEqualToString:@"X"]){
        ketQua = a * b;
    }
    else if([str isEqualToString:@"/"]){
        ketQua = a / b;
    }
    
    NSString *myResult = [NSString stringWithFormat:@"%.4f", ketQua];
    [self.display setText:myResult];

}
- (IBAction)dot:(id)sender {
    NSString *num = self.display.text;
    num = [num stringByAppendingString:@"."];
    [self.display setText:num];
}




@end
