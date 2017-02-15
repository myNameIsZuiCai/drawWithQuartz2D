//
//  lineView.m
//  Quartz2D画形状
//
//  Created by 上海均衡 on 2017/1/19.
//  Copyright © 2017年 上海均衡. All rights reserved.
//

#import "lineView.h"

@implementation lineView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

*/
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef context=UIGraphicsGetCurrentContext();
    //描述路径
    //设置起点
    CGContextMoveToPoint(context, 50, 50);
    //设置控制点
    CGContextAddQuadCurveToPoint(context, 75, 20, 100,50);
    //开始渲染
    CGContextStrokePath(context);

}
#pragma mark 画一条曲线
-(void)drawCurve{
    CGContextRef context=UIGraphicsGetCurrentContext();
    //描述路径
    //设置起点
    CGContextMoveToPoint(context, 50, 50);
    //设置控制点
    CGContextAddQuadCurveToPoint(context, 50, 20, 300, 300);
    //开始渲染
    CGContextStrokePath(context);
}
#pragma mark 画两条直线（贝塞尔）
-(void)drawTwoLines{
    //用贝塞尔曲线的方式
    UIBezierPath *path=[UIBezierPath bezierPath];
    //设置起点
    [path moveToPoint:CGPointMake(50, 50)];
    //设置终点
    [path addLineToPoint:CGPointMake(100, 50)];
    path.lineWidth=5;
    path.lineCapStyle=kCGLineCapSquare;
    path.lineJoinStyle=kCGLineJoinRound;
    [[UIColor redColor] setStroke];
    [path stroke];
    
    UIBezierPath *path1=[UIBezierPath bezierPath];
    //设置起点
    [path1 moveToPoint:CGPointMake(50, 200)];
    //设置终点
    [path1 addLineToPoint:CGPointMake(100, 200)];
    path1.lineCapStyle=kCGLineCapSquare;
    path1.lineJoinStyle=kCGLineJoinRound;
    [[UIColor greenColor] setStroke];
    [path1 stroke];
}
#pragma mark 画一条直线
-(void)drawContextState{
    //获取图形上下文
    CGContextRef context=UIGraphicsGetCurrentContext();
    //设置起点
    CGContextMoveToPoint(context, 50, 50);
    //设置终点
    CGContextAddLineToPoint(context, 100, 50);
    //设置第二根线的终点，起点为上一根线的终点
    CGContextAddLineToPoint(context, 100, 200);
    //在渲染之前设置绘图状态
    [[UIColor redColor] setStroke];
    //设置线宽
    CGContextSetLineWidth(context, 10);
    //设置连接样式
    CGContextSetLineJoin(context, kCGLineJoinRound);
    //设置顶角样式(曲线的开头和结尾)
    CGContextSetLineCap(context, kCGLineCapRound);
    //渲染上下文
    CGContextStrokePath(context);
}
@end
