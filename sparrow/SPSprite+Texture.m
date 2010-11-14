//
//  SPSprite+Texture.m
//  SparrowV1.0TestDrive
//
//  Created by saumya ray on 11/13/10.
//  Copyright 2010 Personal. All rights reserved.
//

#import "SPSprite+Texture.h"


@implementation SPSprite(Texture)

-(SPTexture *)makeRoundedCornerRectWithWidth:(float)width Height:(float)height AndCornerRadius:(float)radius
{
	SPTexture *t=[[SPTexture alloc] initWithWidth:320 
										   height:480 
											 draw:^(CGContextRef context)
				  {
					  CGFloat borderThickness=0.0f;
					  CGRect rect=CGRectMake(borderThickness, borderThickness, width, height);
					  //CGFloat radius=10.0f;
					  
					  CGMutablePathRef path= CGPathCreateMutable();
					  
					  CGPathMoveToPoint(path, NULL, CGRectGetMidX(rect), CGRectGetMinY(rect));
					  CGPathAddArcToPoint(path, NULL, CGRectGetMaxX(rect), CGRectGetMinY(rect), 
										  CGRectGetMaxX(rect), CGRectGetMaxY(rect), radius);
					  CGPathAddArcToPoint(path, NULL, CGRectGetMaxX(rect), CGRectGetMaxY(rect), 
										  CGRectGetMinX(rect), CGRectGetMaxY(rect), radius);
					  CGPathAddArcToPoint(path, NULL, CGRectGetMinX(rect), CGRectGetMaxY(rect), 
										  CGRectGetMinX(rect), CGRectGetMinY(rect), radius);
					  CGPathAddArcToPoint(path, NULL, CGRectGetMinX(rect), CGRectGetMinY(rect), 
										  CGRectGetMaxX(rect), CGRectGetMinY(rect), radius);
					  CGPathCloseSubpath(path);
					  
					  CGContextAddPath(context, path);
					  /*
					   CGContextSetLineWidth(context, borderThickness);
					   CGContextStrokePath(context);
					   */
					  CGContextSetFillColorWithColor(context, [[UIColor whiteColor] CGColor]);
					  CGContextFillPath(context);
				  }];
	return t;
}
@end
