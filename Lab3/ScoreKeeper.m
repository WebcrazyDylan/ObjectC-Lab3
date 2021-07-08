//
//  ScoreKeeper.m
//  Lab3
//
//  Created by Dylan Park on 2021-07-08.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init
{
    self = [super init];
    if (self) {
        _right  = 0;
        _wrong = 0;
    }
    return self;
}

- (NSString *)description
{
    CGFloat r = [[NSNumber numberWithInteger:self.right] floatValue];
    CGFloat w = [[NSNumber numberWithInteger:self.wrong] floatValue];
    CGFloat percentage = (r / (r + w)) * 100;
    return [NSString stringWithFormat:@"Score: %zd Right, %zd Wrong ---- %.1f%%", self.right, self.wrong, percentage];
}

@end
