//
//  ScoreKeeper.m
//  Maths
//
//  Created by Chris Jones on 2017-01-10.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "ScoreKeeper.h"
#import "AdditionQuestion.h"

@implementation ScoreKeeper

-(float)scoreKeep {
    return 100*((float) self.right / (self.right + self.wrong));
}

@end
