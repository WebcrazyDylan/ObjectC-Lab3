//
//  main.m
//  Lab3
//
//  Created by Dylan Park on 2021-07-08.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "QuestionFactory.h"
#import "Question.h"
#import "AdditionQuestion.h"
#import "ScoreKeeper.h"
int main(int argc, const char * argv[]) {
  @autoreleasepool {
    // Factory Pattern (Factory Method)
    // if you have a lot of objects to create, you can use this Factory Pattern
    
    // Questions
    // 1. AdditionQuestion
    // 2. SubtractionQuestion
    // 3. MultiplicationQuestion
    // 4. DivisionQuestion
      
      NSLog(@"MATHS! \n\n\n");
      BOOL gameOn = YES;
      ScoreKeeper *sk = [[ScoreKeeper alloc] init];
      QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
    
      while (gameOn) {
          Question *q1 = [questionFactory generateRandomQuestion];
          NSLog(@"%@", [q1 question]);
          
          NSString *input = [InputHandler getUserInput];
          
          if ([input isEqualToString:@"quit"]) {
              gameOn = NO;
          }
          else if ([q1 answer] == [input integerValue]) {
              NSLog(@"Right!");
              sk.right++;
          }else {
              NSLog(@"Wrong!");
              sk.wrong++;
          }
          NSLog(@"%@", sk);
      }
      NSLog(@"Game Over");
//    for (int i = 0; i < 10; ++i) {
//      NSLog(@"%@", [QuestionFactory generateRandomQuestion]);
//    }
    
  }
  return 0;
}
