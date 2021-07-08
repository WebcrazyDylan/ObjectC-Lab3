//
//  MultiplicationQuestion.m
//  Lab4
//
//  Created by Dylan Park on 2021-07-08.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion {

    super.question = [NSString stringWithFormat:@"%li * %li = ?", (long) super.leftValue, (long) super.rightValue];
    super.answer = super.leftValue * super.rightValue;
    
}

@end
