//
//  AdditionQuestion.m
//  Maths
//
//  Created by Chris Jones on 2017-01-10.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "AdditionQuestion.h"

@interface AdditionQuestion ()

@property (nonatomic) NSInteger inputA;
@property (nonatomic) NSInteger inputB;

@end

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        _inputA = arc4random_uniform(90) + 10;
        _inputB = arc4random_uniform(90) + 10;
        _question = [NSString stringWithFormat:@"%ld + %ld", _inputA, _inputB];
        _answer = _inputA + _inputB;
    }
    return self;
}

@end
