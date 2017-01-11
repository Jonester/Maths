//
//  QuestionManager.h
//  Maths
//
//  Created by Chris Jones on 2017-01-11.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionManager : NSObject

@property (nonatomic) NSMutableArray *questions;
@property (nonatomic) NSInteger totalTime;

-(NSString *)timeOutput;


@end
