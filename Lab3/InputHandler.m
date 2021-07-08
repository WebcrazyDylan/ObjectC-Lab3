//
//  InputHandler.m
//  Lab3
//
//  Created by Dylan Park on 2021-07-08.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *) getUserInput {
    char myStr[256];
    fgets(myStr, 256, stdin);
    NSString *input = [[NSString stringWithCString:myStr encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return input;
}

@end
