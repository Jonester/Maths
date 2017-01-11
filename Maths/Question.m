//
//  Question.m
//  Maths
//
//  Created by Chris Jones on 2017-01-10.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        _inputA = arc4random_uniform(90) + 10;
        _inputB = arc4random_uniform(90) + 10;
        _question = [NSString new];
        _answer = 0;
        _startTime = [NSDate date];
    }
    return self;
}

-(NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval)answerTime {
    return [self.endTime timeIntervalSinceDate:self.startTime];
}

-(void)generateQuestion {
    
}

@end
