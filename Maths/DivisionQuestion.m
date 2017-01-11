//
//  DivisionQuestion.m
//  Maths
//
//  Created by Chris Jones on 2017-01-11.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion

- (instancetype)init
{
    if (self = [super init]) {
        [self generateQuestion];
    }
    self.answer = self.inputA / self.inputB;
    return self;
}

- (void)generateQuestion {
    self.question = [NSString stringWithFormat:@"%ld / %ld", self.inputA, self.inputB];
}

@end
