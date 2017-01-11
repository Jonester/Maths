//
//  QuestionFactory.h
//  Maths
//
//  Created by Chris Jones on 2017-01-11.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

@property (nonatomic) NSArray *subClassNames;

-(Question *)generateRandomQuestion;

@end
