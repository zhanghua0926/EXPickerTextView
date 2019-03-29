//
//  EXPickerTextField.h
//  EXPickerTextField
//
//  Created by Eric on 2019/3/29.
//  Copyright © 2019 icety. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EXPickerTextField;

@protocol EXPickerTextFieldDelegate <NSObject>

@optional
- (void)pickerText:(EXPickerTextField *_Nullable)pickerText indexRow:(NSInteger)row doneButtonPressed:(UIBarButtonItem *_Nullable)sender;

- (void)pickerText:(EXPickerTextField *_Nullable)pickerText cancelButtonPressed:(UIBarButtonItem *_Nullable)sender;

@end



@interface EXPickerTextField : UIView

@property (nonatomic, weak, nullable) id<EXPickerTextFieldDelegate> delegate;

@property (nonatomic, strong, nullable) NSArray *titles;

@property (nonatomic, strong, nullable) UIFont *textFont;

@property (nonatomic, copy, nullable) NSString *placeholder;

- (void)selectRow:(NSInteger)row component:(NSInteger)component;

@end
