//
//  Question.m
//  Lab4
//
//  Created by Dylan Park on 2021-07-08.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        _leftValue = arc4random_uniform(100);
        _rightValue = arc4random_uniform(100);
        _startTime = [NSDate date];
    }
    return  self;
}

- (void) generateQuestion {}

- (NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}


@end
