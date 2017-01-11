//
//  QuestionFactory.m
//  Maths
//
//  Created by Chris Jones on 2017-01-11.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _subClassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
        [self generateRandomQuestion];
    }
    return self;
}
-(Question *)generateRandomQuestion {
    
    int i = arc4random_uniform(4);
    NSString *className = self.subClassNames[i];
    return [[NSClassFromString(className) alloc]init];
    
}

@end
