//
//  shapeView.m
//  Quartz2D画形状
//
//  Created by 上海均衡 on 2017/1/19.
//  Copyright © 2017年 上海均衡. All rights reserved.
//

#import "shapeView.h"

@implementation shapeView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

*/
- (void)drawRect:(CGRect)rect {
    // Drawing code
//    UIBezierPath *path=[UIBezierPath bezierPathWithRoundedRect:CGRectMake(100, 100, 100, 100) cornerRadius:50];
//    [path stroke];
    //fill：填充 必须是一个封闭路径才能使用
    //画一个弧 clockwise:是否顺时针
    CGPoint center=CGPointMake(50, 50);
    CGFloat radius=100;
    UIBezierPath *path=[UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:0 endAngle:M_PI * 0.5 clockwise:YES];
    //添加一根想到圆心
    [path addLineToPoint:center];
//    [path closePath];
    
//    [path stroke];
    [path closePath];
    //fill会默认关闭路径
    [path fill];
    
    
}
@end
