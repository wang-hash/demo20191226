/*
#import <Foundation/Foundation.h>

int main(int argc, const char* argv[]){
    
    NSLog(@"Hello, Objective-C!");
    
    return (0);
}

#import <Foundation/Foundation.h>


BOOL areIntsDifferent(int thing1, int thing2){
    if(thing1 == thing2){
        return (NO);
    }else{
        return (YES);
    }
}

NSString *boolString(BOOL yesNo){
    if(yesNo == NO){
        return (@"YES");
    }else{
        return (@"NO");
    }
}

int main1(int argc, const char* argv[]){
    BOOL areTheyDifferent;
    
    areTheyDifferent = areIntsDifferent(5,5);
    
    NSLog(@"are %d and %d different? %@", 5,5, boolString(areTheyDifferent));
    
    areTheyDifferent = areIntsDifferent(23, 42);
    
    NSLog(@"are %d and %d different? %@", 23, 42, boolString(areTheyDifferent));
    
    return (0);
}

BOOL areIntsDifferent1(int thing1, int thing2){
    return (thing1- thing2);
}

int main2(int argc, const char* argv[]){
    //BOOL areTheyDifferent;
    
    if(areIntsDifferent1(23, 42)){
        NSLog(@"yes");
    }
    
    return (0);
}


int main3(int argc, const char* argv[]){
    NSLog(@"the numbers from 1 to 10:");
    
    int i = 0;
    for(i=1 ; i<=10; i++){
        NSLog(@"%d\n", i);
    }
    return (0);
    
}

int main4(int argc, const char* argv[]){
    FILE* file = fopen("./words.txt", "r");
    char word[100];
    
    while(fgets(word, 100, file)){
        word[strlen(word)-1] = '\0';
        
        NSLog(@"%s is %d characters long", word, strlen(word));
    }
    
    fclose(file);
    
    return (0);
}

typedef enum{
    kCircle,
    kRectangle,
    kOblateSpheroid
}ShapeType;

typedef enum{
    kRedColor,
    kGreenColor,
    kBlueColor
}ShapeColor;

typedef struct{
    int x;
    int y;
    int width;
    int height;
}ShapeRect;

typedef struct{
    ShapeType type;
    ShapeColor color;
    ShapeRect bounds;
}Shape;

void drawShape(Shape shapes[], int count){
    int i = 0;
    
    for(i=0; i<count; i++){
        NSLog(@" draw circle at (%d %d %d %d)", shapes[i].bounds.x, shapes[i].bounds.y, shapes[i].bounds.width, shapes[i].bounds.height);
    }
}

int main(int argc, const char* argv[]){
    Shape shapes[3];
    
    ShapeRect rect0 = {0,0,10,30};
    shapes[0].type = kCircle;
    shapes[0].color = kRedColor;
    shapes[0].bounds = rect0;
    
    drawShape(shapes, 1);
    
    return (0);
}
 
 */
/*

#import <Foundation/Foundation.h>

typedef enum{
    kCircle,
    kRectangle
}ShapeType;

typedef enum{
    kRedColor,
    kGreenColor
}ShapeColor;

typedef struct{
    int x;
    int y;
    int width;
    int height;
}ShapeRect;


typedef struct{
    ShapeColor color;
    ShapeType type;
    ShapeRect rect;
}Shape;

@interface Circle: NSObject
{
    ShapeColor fillColor;
    ShapeRect bounds;
}

-(void) setFillColor: (ShapeColor) fillColor;
-(void) setBounds: (ShapeRect) bounds;
-(void) draw;
@end // Circle


@interface Rectangle: NSObject
{
    ShapeColor fillColor;
    ShapeRect bounds;
}

-(void) setFillColor: (ShapeColor) fillColor;
-(void) setBounds: (ShapeRect) bounds;
-(void) draw;
@end //Rectangle


NSString* colorName(ShapeColor fillColor){
    switch(fillColor){
        case kRedColor:
            return @"red";
            break;
        case kGreenColor:
            return @"green";
            break;
    }
    
    return @"no clue";
} //colorName

@implementation Rectangle
-(void) setFillColor: (ShapeColor) c
{
    fillColor = c;
}
-(void) setBounds: (ShapeRect) b
{
    bounds = b;
}

-(void) draw
{
    NSLog(@"drawing a circle at (%d %d %d %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}
@end


@implementation Circle

-(void) setFillColor: (ShapeColor) c
{
    fillColor = c;
}

-(void) setBounds: (ShapeRect) b{
    bounds = b;
}

-(void) draw{
    NSLog(@"drawing a rectangle at (%d %d %d %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}
@end

void drawShapes(id shapes[], int count){
    int i;
    
    for(i=0; i<count; i++){
        id shape = shapes[i];
        
        [shape draw];
    }
} //drawShapes

int main(int argc, const char* argv[]){
    id shapes[2];
    
    ShapeRect rect0 = {0, 0, 10, 30};
    shapes[0] = [Circle new];
    [shapes[0] setBounds: rect0];
    [shapes[0] setFillColor: kRedColor];
    
    ShapeRect rect1 = {30, 40, 50 ,60};
    shapes[1] = [Rectangle new];
    [shapes[1] setBounds: rect1];
    [shapes[1] setFillColor: kGreenColor];
    
    drawShapes(shapes, 2);
    
    NSLog(@"\n");
    
    [shapes[0] draw];
    [shapes[1] draw];
    return(0);
}


*/


/*
#import <Foundation/Foundation.h>
typedef enum{
    kRedColor,
    kGreenColor
}ShapeColor;

typedef enum{
    kCircle,
    kRectangle
}ShapeType;


typedef struct{
    int x;
    int y;
    int width;
    int height;
}ShapeRect;


@interface Shape: NSObject{
    //ShapeType type;
    ShapeColor fillColor;
    ShapeRect bounds;
}
-(void) setFillColor: (ShapeColor) fillColor;
-(void) setBounds: (ShapeRect) bounds;
-(void) draw;
@end // Shape

@interface Circle : Shape
@end

@interface Rectangle: Shape
@end

@implementation Shape

-(void) setFillColor: (ShapeColor) c{
    fillColor = c;
}

-(void) setBounds: (ShapeRect) b{
    bounds = b;
}

-(void) draw{}
@end

NSString *colorName(ShapeColor fillColor){
    switch(fillColor){
        case kRedColor:
            return @"red";
            break;
        case kGreenColor:
            return @"Green";
            break;
    }
    
    return @"no clue";
}

@implementation Circle

//super关键字
-(void) setFillColor : (ShapeColor) c{
    if(c == kRedColor){
        c = kGreenColor;
    }
    
    [super setFillColor : c];
}

-(void) draw{
    NSLog(@"drawing a circle at (%d %d %d %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}
@end


@implementation Rectangle
-(void) draw{
    NSLog(@"drawing a rectangle at (%d %d %d %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}
@end

void drawShapes(id shapes[], int count){
    int i = 0;
    for(i=0; i<count; i++){
        [shapes[i] draw];
    }
}

int main(int argc, const char* argv[]){
    id shapes[2];
    
    ShapeRect  rect0  = {0,0,10, 30};
    shapes[0] = [Circle new];
    [shapes[0] setBounds: rect0];
    [shapes[0] setFillColor: kRedColor];
    
    ShapeRect rect1 =  {10,20,30,40};
    shapes[1] = [Rectangle new];
    [shapes[1] setBounds: rect1];
    [shapes[1] setFillColor: kGreenColor];
    
    drawShapes(shapes, 2);
    
    return (0);
}
 */

#import <Foundation/Foundation.h>


@interface Tire: NSObject
@end

@implementation Tire
-(NSString *) description{
    return (@"i am a tire, i last a while");
}
@end
 
@interface Engine : NSObject
@end

@implementation Engine
-(NSString *) description{
    return (@"i am an engine. Vroom!");
}
@end

#import "Tire.h"
#import "Engine.h"
#import "Car.h"

@interface Car : NSObject{
    Engine* engine;
    Tire* tires[4];
}

-(Engine*) engine;

-(void) setEngine : (Engine* )newEngine;

-(Tire*) tireAtIndex : (int) index;

-(void) setTire: (Tire*) tire
       atIndex: (int) index;

-(void) print;
@end

@implementation Car
-(id) init{
    if(self = [super init]){
        engine = [Engine new];
        
        tires[0] = [Tire new];
        tires[1] = [Tire new];
        tires[2] = [Tire new];
        tires[3] = [Tire new];
    }
        
        return (self);
}
-(Engine*) engine{
    return engine;
}

-(void) setEngine: (Engine*) newEngine{
    engine = newEngine;
}

-(Tire*) tireAtIndex: (int) index{
    if(index < 0 || index > 3){
        NSLog(@"bad index (%d) in tireAtIndex:", index);
        exit(1);
    }
    
    return (tires[index]);
}
-(void) setTire: (Tire*) tire
        atIndex: (int) index{
    if(index < 0 || index > 3){
        NSLog(@"bad index (%d) in setTire: atIndex:", index);
        exit(1);
    }
    
    tires[index] = tire;
}



-(void) print{
    NSLog(@"%@", engine);
    NSLog(@"%@", tires[0]);
    NSLog(@"%@", tires[1]);
    NSLog(@"%@", tires[2]);
    NSLog(@"%@", tires[3]);
}
@end

/*
int main(int argc, const char* argv[]){
    Car *car;
    car = [Car new];
    [car print];
    
    Engine* engine = [Engine new];
    [car setEngine: engine];
    
    Tire* tire = [Tire new];
    [car setTire: tire
         atIndex: 2];
    
    [car print];
    //NSLog(@"finish !!!");
    
    return(0);
}
 */

