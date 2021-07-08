//
//  QuestionFactory.m
//  Lab3
//
//  Created by Dylan Park on 2021-07-08.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init {
    self = [super init];
    if (self) {
//        _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}

- (Question *) generateRandomQuestion {
  // NSMutableArray
  NSArray *questions = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
  NSUInteger size = [questions count];
  int randomIndex = arc4random_uniform((unsigned int) size);
  
  NSString *questionType = [questions objectAtIndex:randomIndex];
  
  return [[NSClassFromString(questionType) alloc] init];
}

@end
