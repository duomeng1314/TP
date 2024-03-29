//
//  TPPSTitleViewController.m
//  TP
//
//  Created by moxin on 15/6/11.
//  Copyright (c) 2015年 VizLab. All rights reserved.
//

#import "TPPSTitleViewController.h"

@interface TPPSTitleViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation TPPSTitleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.textField.layer.cornerRadius = 5.0f;
    self.textField.layer.borderColor = [TPTheme grayColor].CGColor;
    self.textField.layer.borderWidth = kOnePixel;
    self.textField.layer.masksToBounds = true;
    self.textField.leftView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 10, self.textField.vzHeight)];
    self.textField.leftViewMode = UITextFieldViewModeAlways;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)onNext
{
    if (self.textField.text.length == 0) {
        TOAST(self, @"请输入名称");
        return NO;
    }
    else if (self.textField.text.length >= 20)
    {
        TOAST(self, @"亲，最多只能输入20个字哦~");
        return NO;
    }
    else
    {
        if (self.callback) {
            self.callback(self.textField.text,nil);
        }
        return YES;
    }
}
- (void)onBack
{
    
}

@end
