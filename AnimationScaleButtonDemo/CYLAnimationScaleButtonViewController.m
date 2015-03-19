//
//  CYLAnimationScaleButtonViewController.m
//  AnimationScaleButtonDemo
//
//  Created by CHENYI LONG on 14-11-27.
//  Copyright (c) 2014年 CHENYI LONG. All rights reserved.
//

#define UI_SCREEN_WIDTH                 ([[UIScreen mainScreen] bounds].size.width)
#define UI_SCREEN_HEIGHT                ([[UIScreen mainScreen] bounds].size.height)



#define kUIsendBtnX UI_SCREEN_WIDTH/2
#define kUIsendBtnY UI_SCREEN_HEIGHT/2
#define kUIsendBtnXCenter UI_SCREEN_WIDTH/2
#define kUIsendBtnYCenter UI_SCREEN_HEIGHT/2
#define kUIsendBtnWidth 110
#define kUIsendBtnHeight 40


#import "CYLAnimationScaleButtonViewController.h"
#import "AnimationScaleButton.h"

@interface CYLAnimationScaleButtonViewController ()<AnimationScaleButtonDelegate>
{
    AnimationScaleButton *_animationScaleButton;
}
@end

@implementation CYLAnimationScaleButtonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _animationScaleButton = [[AnimationScaleButton alloc]  init];
    
    _animationScaleButton.frame = CGRectMake(100, 100, 110, 110);
    _animationScaleButton.center = CGPointMake(kUIsendBtnX, kUIsendBtnY);
    [_animationScaleButton initWithAnimationScaleButtonImage:@"function_newfreeapps-" withBackgroundimage:@"function_newfreeapps" withRepeatCount:0];
    _animationScaleButton.delegate = self;
//    _animationScaleButton.playAnimation = NO;
//    _animationScaleButton.repeatCount = 1;
    [self.view addSubview:_animationScaleButton];
    
}
-(void)animationScaleButtonClicked:(id)sender {
    NSLog(@"-(void)animationScaleButtonClicked:(id)sender");

}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    _animationScaleButton.playAnimation = !_animationScaleButton.playAnimation;
}
@end
