//
//  RadioButtonManager.m
//  GraphicsTest
//
//  Created by Vlad on 15/08/2016.
//  Copyright © 2016 Vlad. All rights reserved.
//

#import "RadioButtonManager.h"
#import <UIKit/UIKit.h>

@implementation RadioButtonManager

-(void)setButtons:(NSArray *)buttons
{
    for (UIButton * button in _buttons)
    {
        [button removeTarget:self action:@selector(turnOffButtonsExcept:) forControlEvents:UIControlEventTouchUpInside];
    }
    _buttons = [NSArray arrayWithArray:buttons];
    for (UIButton * button in buttons)
    {
        [button addTarget:self action:@selector(turnOffButtonsExcept:) forControlEvents:UIControlEventTouchUpInside];
    }
}

-(void)turnOffButtonsExcept:(id)sender
{
    for (UIButton * button in self.buttons)
    {
        if (button != sender)
        {
            button.selected = NO;
        }
    }
    [sender setSelected:YES];
}

@end
