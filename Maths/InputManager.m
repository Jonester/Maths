//
//  InputManager.m
//  Maths
//
//  Created by Chris Jones on 2017-01-10.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "InputManager.h"

@implementation InputManager

+(NSString *)collectInfo {
    char input[255];
    fgets(input, 255, stdin);
    
    return [[NSString stringWithCString:input encoding:NSUTF8StringEncoding]stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

@end
