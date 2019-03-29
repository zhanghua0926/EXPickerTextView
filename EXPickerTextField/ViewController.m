//
//  ViewController.m
//  EXPickerTextField
//
//  Created by Eric on 2019/3/29.
//  Copyright © 2019 icety. All rights reserved.
//

#import "ViewController.h"
#import "EXPickerTextField.h"

@interface ViewController ()<EXPickerTextFieldDelegate>

@property (nonatomic, strong) EXPickerTextField *agePT;

@property (nonatomic, strong) NSArray *ages;
@property (nonatomic, copy) NSString *age;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSMutableArray *ages = [NSMutableArray arrayWithCapacity:22];
    for (int i = 1; i < 17; i++) {
        [ages addObject:[NSString stringWithFormat:@"%@岁", @(i)]];
    }
    _ages = [ages copy];
    
    UILabel *titleLbl = [[UILabel alloc] initWithFrame:CGRectMake(20, 300, 40, 30)];
    titleLbl.text = @"年龄:";
    titleLbl.textColor = [UIColor colorWithRed:247./255 green:114./255 blue:25./255 alpha:1];
    [self.view addSubview:titleLbl];
    
    UIImageView *rowImg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"age_img"]];
    rowImg.frame = CGRectMake(75, 300, 200, 30);
    rowImg.userInteractionEnabled = YES;
    [self.view addSubview:rowImg];
    
    self.agePT = [[EXPickerTextField alloc] initWithFrame:CGRectMake(15, 0, 170, 30)];
    self.agePT.titles = _ages;
    self.agePT.placeholder = @"未设置";
    self.agePT.delegate = self;
    [rowImg addSubview:_agePT];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

@end
