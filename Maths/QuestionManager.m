//
//  QuestionManager.m
//  Maths
//
//  Created by Chris Jones on 2017-01-11.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray new];
        _totalTime = 0;
    }
    return self;
}

-(NSString *)timeOutput {
    for (Question *question in self.questions) {
        self.totalTime += [question answerTime];
    }
    return [NSString stringWithFormat:@"Total Time: %.1f seconds Average Time: %.1f seconds", (float)self.totalTime, (float)self.totalTime/self.questions.count];
}

@end
