//
//  QuestionManager.h
//  Lab3
//
//  Created by Dylan Park on 2021-07-08.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject

@property (nonatomic) NSMutableArray *questions;

-(NSString *) timeOutput ;

@end

NS_ASSUME_NONNULL_END
