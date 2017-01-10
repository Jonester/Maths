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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        ScoreKeeper *score = [ScoreKeeper new];
        
        while (gameOn) {
            AdditionQuestion *addition = [AdditionQuestion new];
            
            NSLog(@"\n\nPlease answer the following question:\nEnter 'q' or 'quit' to quit at anytime.\n\n%@ =", addition.question);
            NSString *userInput = [InputManager collectInfo];
            
            if ([userInput isEqualToString:@"q"] || [userInput isEqualToString:@"quit"]) {
                gameOn = NO;
                NSLog(@"Game over! Thanks for playing.");
            } else if ([userInput integerValue] == addition.answer) {
                NSLog(@"You are correct!");
                score.right++;
            } else {
                NSLog(@"That is incorrect. The correct answer is %ld. Better luck next time.", addition.answer);
                score.wrong++;
            }
            NSLog(@"Score: Right: %ld  Wrong: %ld  Score: %.2f%%", score.right, score.wrong, 100*((float) score.right / (score.right + score.wrong)));
        }
    }
    return 0;
}
