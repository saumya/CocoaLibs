//
//  SPSprite+Texture.h
//  SparrowV1.0TestDrive
//
//  Created by saumya ray on 11/13/10.
//  Copyright 2010 Personal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Sparrow.h"

@interface SPSprite(Texture)
-(SPTexture *)makeRoundedCornerRectWithWidth:(float)width Height:(float)height AndCornerRadius:(float)radius;
@end
