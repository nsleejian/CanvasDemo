//
//  ViewController.m
//  CanvasDemo
//
//  Created by Cocoa Lee on 15/11/6.
//  Copyright © 2015年 Cocoa Lee. All rights reserved.
//

#import "ViewController.h"
#import <Canvas.h>
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *catBUtton;
@property (weak, nonatomic) IBOutlet CSAnimationView *animationView;
@property (weak, nonatomic) IBOutlet UILabel *typeLabel;
@property (nonatomic,strong)NSArray *animationTypeArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.catBUtton.tag = 100;
    _animationTypeArray = @[
                            CSAnimationTypePop ,
                            CSAnimationTypeMorph  ,
                            CSAnimationTypeFlash ,
                            CSAnimationTypeShake ,
                            CSAnimationTypeFadeOut,
                            CSAnimationTypeFadeInLeft ,
                            CSAnimationTypeFadeInRight,
                            CSAnimationTypeFadeInDown ,
                            CSAnimationTypeFadeInUp ,
                            CSAnimationTypeSlideLeft,
                            CSAnimationTypeSlideRight,
                            CSAnimationTypeSlideDown ,
                            CSAnimationTypeSlideUp ,
                            CSAnimationTypeZoomIn,
                            CSAnimationTypeZoomOut ,
                            CSAnimationTypeSlideDownReverse ,
                            CSAnimationTypeBounceLeft,
                            CSAnimationTypeBounceRight,
                            CSAnimationTypeBounceDown,
                            CSAnimationTypeBounceUp,
                            CSAnimationTypeFadeIn,
                            CSAnimationTypeFadeInSemi ,
                            CSAnimationTypeFadeOutSemi  ,
                            CSAnimationTypeFadeOutRight  ,
                            CSAnimationTypeFadeOutLeft  ,
                            CSAnimationTypePopDown ,
                            CSAnimationTypePopAlpha ,
                            CSAnimationTypePopAlphaUp ,
                            CSAnimationTypePopAlphaOut
                            ];
    
   NSTimer *timer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(testCode) userInfo:nil repeats:YES];
    
    [[NSRunLoop  currentRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
    

}

-(void)testCode{
    [self catTouch:self.catBUtton];
}

- (IBAction)catTouch:(UIButton *)sender {
    sender.userInteractionEnabled = NO;
    _animationView.backgroundColor = [UIColor redColor];
    _animationView.duration = 1;
    _animationView.delay    = 0;
    if (sender.tag- 100 < _animationTypeArray.count) {
        _animationView.type = _animationTypeArray[sender.tag - 100];
    }
    else{
        sender.tag = 100;
        _animationView.type = _animationTypeArray[sender.tag - 100];

    }
    _typeLabel.text = _animationView.type;
    
    [_animationView startCanvasAnimation];
    sender.tag = sender.tag +1;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
