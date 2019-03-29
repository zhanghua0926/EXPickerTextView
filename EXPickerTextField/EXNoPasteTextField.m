//
//  EXNoPasteTextField.m
//  EXPickerTextField
//
//  Created by Eric on 2019/3/29.
//  Copyright © 2019 icety. All rights reserved.
//

#import "EXNoPasteTextField.h"

@implementation EXNoPasteTextField
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
    UIMenuController *menu = [UIMenuController sharedMenuController];
    if (menu) {
        menu.menuVisible = NO;
    }
    
    return NO;
}

@end
