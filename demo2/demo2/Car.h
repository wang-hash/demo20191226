
//
//  Car.h
//  demo2
//
//  Created by wangjingru on 2019/12/25.
//  Copyright © 2019 wangjingru. All rights reserved.
//

#ifndef Car_h
#define Car_h

#import <Cocoa/Cocoa.h>

@class Tire;
@class Engine;

@interface Car : NSObject{
    Tire* tires[4];
    Engine* engine;
}

-(void) setEngine:(Engine *) engine;

-(Engine*) engine;

-(void) setTire: (Tire*) tire
        atIndex: (int) index;

-(Tire*) tireAtIndex: (int) Index;

-(void) print;

@end
#endif /* Car_h */
