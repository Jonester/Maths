//
//  Question.h
//  Maths
//
//  Created by Chris Jones on 2017-01-10.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

- (instancetype)init;

@property (nonatomic) NSInteger answer;
@property (nonatomic) NSString *question;
@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSDate *endTime;
@property (nonatomic) NSInteger inputA;
@property (nonatomic) NSInteger inputB;

-(NSInteger)answer;
-(NSTimeInterval)answerTime;
-(void)generateQuestion;

@end
