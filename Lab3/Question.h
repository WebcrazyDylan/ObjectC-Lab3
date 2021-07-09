//
//  Question.h
//  Lab4
//
//  Created by Dylan Park on 2021-07-08.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

@property  (nonatomic) NSInteger leftValue;
@property  (nonatomic) NSInteger rightValue;
@property  (nonatomic) NSInteger answer;
@property  (nonatomic, strong) NSDate *startTime;
@property  (nonatomic, strong) NSDate *endTime;
@property (nonatomic, strong) NSString *question;

- (NSInteger) answer ;

//- (void)generateQuestion;
- (NSTimeInterval)timeToAnswer;

@end

NS_ASSUME_NONNULL_END
