//
//  main.m
//  Maths
//
//  Created by Chris Jones on 2017-01-10.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputManager.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        ScoreKeeper *score = [ScoreKeeper new];
        QuestionManager *questionManager = [QuestionManager new];
        QuestionFactory *questionFactory = [QuestionFactory new];
        
        while (gameOn) {
            Question *question = [questionFactory generateRandomQuestion];
            [questionManager.questions addObject:question];
            NSLog(@"\n\nPlease answer the following question:\n(Enter 'q' or 'quit' to quit at anytime)\n\n%@ =", question.question);
            NSString *userInput = [InputManager collectInfo];
            
            if ([userInput isEqualToString:@"q"] || [userInput isEqualToString:@"quit"]) {
                gameOn = NO;
                NSLog(@"Game over! Thanks for playing.");
            } else if ([userInput integerValue] == question.answer) {
                NSLog(@"You are correct!");
                score.right++;
            } else {
                NSLog(@"That is incorrect. The correct answer is %ld. Better luck next time.", question.answer);
                score.wrong++;
            }
            NSLog(@"Score: Right: %ld  Wrong: %ld  Score: %.2f%%\n%@", score.right, score.wrong, score.scoreKeep, [questionManager timeOutput]);
        }
    }
    return 0;
}
