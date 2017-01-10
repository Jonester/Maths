//
//  AdditionQuestion.h
//  Maths
//
//  Created by Chris Jones on 2017-01-10.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

- (instancetype)init;

@property (nonatomic) NSInteger answer;
@property (nonatomic) NSString *question;

@end
