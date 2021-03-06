//
//  UIImage+HZColor.h
//  EffectiveOC
//
//  Created by 韩志峰 on 2018/10/10.
//  Copyright © 2018 韩志峰. All rights reserved.
//

#import <UIKit/UIKit.h>
/*根据颜色创建图片*/
@interface UIImage (HZColor)
/**
 创建1*1大小的纯色图片
 
 @param color 图片
 颜色
 @return 创建的图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color;


/**
 创建指定大小、颜色的图片
 
 @param color 图片颜色
 @param size 图片大小
 @return 创建的图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;


/**
 创建纯色背景、文字居中的图片
 
 @param color 图片背景色
 @param size 图片大小
 @param attributeString 居中文字
 @return 创建的图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size text:(NSAttributedString *)attributeString;


/**
 裁剪圆形图片
 
 @param image 需要裁剪的图片
 @param inset 裁剪inset
 @return 裁剪后的图片
 */
+ (UIImage *)ellipseImage:(UIImage *)image withInset:(CGFloat)inset;


/**
 裁剪带边框的圆形图片
 
 @param image 需要裁剪的图片
 @param inset 裁剪inset
 @param width 边框宽度
 @param color 边框颜色
 @return 裁剪后的图片
 */
+ (UIImage *)ellipseImage: (UIImage *) image withInset:(CGFloat)inset withBorderWidth:(CGFloat)width withBorderColor:(UIColor*)color;
@end
