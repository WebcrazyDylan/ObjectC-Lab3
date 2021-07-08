//
//  Question.h
//  Lab4
//
//  Created by Dylan Park on 2021-07-08.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

@property  NSInteger leftValue;
@property  NSInteger rightValue;
@property  (nonatomic) NSInteger answer;
@property  NSDate* startTime;
@property  NSDate* endTime;
@property Question* question;

- (instancetype)init;

@end

NS_ASSUME_NONNULL_END
