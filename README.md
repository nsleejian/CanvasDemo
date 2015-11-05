![Canvas.gif](http://upload-images.jianshu.io/upload_images/24489-e320a33624fd0859.gif?imageMogr2/auto-orient/strip)
![canvaf.gif](http://upload-images.jianshu.io/upload_images/24489-7b634e3086a7d3cb.gif?imageMo)


###Canvas 是什么？
canvas 是一个非常高效且实用简单的 iOS 动画库，只需要非常简洁的代码，就能实现很多常用的效果。官方的口号是 “Animate in Xcode without code ”。

canvas 包涵 29 种常用的动画效果，这些效果可以应用在很多地方，如当我们点击评分、收藏、赞时按钮的动态效果。

```
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
```

###如何使用 Canvas ？
#####1、CocoaPods
```
platform :ios, '7.0'
pod 'Canvas', '~> 0.1.2'
```
 #####2、 在 storyboard 中使用。
设置一个 View 继承 CSAnimationView，然后通过 runtime Attribute 设置动画属性，如类型、时间、延迟等。

![CSAnimationView.png](http://upload-images.jianshu.io/upload_images/24489-c199451e9267529a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

关于  runtime Attribute ，在 运行时你设置的这个属性才会起作用,是Objective-C语言的动态特性和运行时(runtime)的强大。详情请见：

http://yulingtianxia.com/blog/2014/11/05/objective-c-runtime/
http://wufawei.com/2013/11/ios-application-security-3/

##### 3、Using Code
非常简单只需几行代码。
```
#import "Canvas.h"
```
```
CSAnimationView *animationView = [[CSAnimationView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
animationView.backgroundColor = [UIColor whiteColor];
animationView.duration = 0.5;
animationView.delay = 0;
animationView.type = CSAnimationTypeMorph;
[self.view addSubview:animationView];

//添加你想增加效果的 View 为 animationView 的子视图
// [animationView addSubview:<#(UIView *)#>]

[animationView startCanvasAnimation];
```
### GitHub & Website
https://github.com/CanvasPod/Canvas
[http://canvaspod.io](http://canvaspod.io/)
