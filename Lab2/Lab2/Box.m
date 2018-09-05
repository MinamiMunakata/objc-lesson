//
//  Box.m
//  Lab2
//
//  Created by Minami Munakata on 2018-09-05.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype)initWithWidth: (float) width andHeight: (float) height andLength: (float) length
{
    self = [super init];
    if (self) {
        _width = width;
        _height = height;
        _length = length;
    }
    return self;
}

- (float) volume {
    return _width * _height * _length;
}

- (float) ratio: (Box*) box2	 {
    float box1vol = [(Box *)self volume];
    float box2vol = [box2 volume];
    if (box1vol > box2vol) {
        return box1vol / box2vol;
    }
    return 0;
    
}


@end
