//
//  SPSprite+Circle.m
//  SparrowV1.0TestDrive
//
//  Created by saumya ray on 11/11/10.
//  Copyright 2010 Saumya. All rights reserved.
//

#import "SPSprite+Circle.h"


@implementation SPSprite(Circle)
-(void)makeCircle:(int)radius WithThickness:(int)thickness AndColor:(uint)color
{
	for (int i=0; i<=360; i++) {
		SPQuad *q=[SPQuad quadWithWidth:thickness height:3];
		q.color = color;
		q.x=radius*cos(i);
		q.y=radius*sin(i);
		q.rotation=i;
		[self addChild:q];
	}
}
@end
