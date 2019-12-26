//
//  Car.m
//  demo2
//
//  Created by wangjingru on 2019/12/25.
//  Copyright © 2019 wangjingru. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Tire.h"
#import "Engine.h"

@implementation Car

-(void) setEngine: (Engine*) e{
    engine = e;
}

-(Engine*) engine{
    return engine;
}

-(void) setTire: (Tire*) tire
        atIndex: (int) index{
    if(index < 0 || index > 3){
        NSLog(@"bad index (%d) in setTire: atindex:", index);
        exit(1);
    }
    
    tires[index] = tire;
}

-(Tire*) tireAtIndex : (int) index{
    if(index < 0 || index > 3){
        NSLog(@"bad index (%d) in setTire: atIndex:", index);
        exit(1);
    }
    
    return (tires[index]);
}

-(void) print{
    NSLog(@"%@", engine);
    NSLog(@"%@", tires[0]);
    NSLog(@"%@", tires[1]);
    NSLog(@"%@", tires[2]);
    NSLog(@"%@", tires[3]);
}
@end

