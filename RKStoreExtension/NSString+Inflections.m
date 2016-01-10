//
//  NSString+Inflections.m
//  Clientel
//
//  Created by Joseph Rider on 11/22/14.
//  Copyright (c) 2014 Joseph Rider. All rights reserved.
//

#import "NSString+Inflections.h"
#import "TTTStringInflector.h"

@implementation NSString (Inflections)

- (NSString *)singularize {
    return [[TTTStringInflector defaultInflector] singularize:self];
}

- (NSString *)pluralize {
    return [[TTTStringInflector defaultInflector] pluralize:self];
}

- (NSString *)underscore{
    NSScanner *scanner = [NSScanner scannerWithString:self];
    scanner.caseSensitive = YES;
    
    NSCharacterSet *uppercase = [NSCharacterSet uppercaseLetterCharacterSet];
    NSCharacterSet *lowercase = [NSCharacterSet lowercaseLetterCharacterSet];
    
    NSString *buffer = nil;
    NSMutableString *output = [NSMutableString string];
    
    while (scanner.isAtEnd == NO) {
        
        if ([scanner scanCharactersFromSet:uppercase intoString:&buffer]) {
            [output appendString:[buffer lowercaseString]];
        }
        
        if ([scanner scanCharactersFromSet:lowercase intoString:&buffer]) {
            [output appendString:buffer];
            if (!scanner.isAtEnd)
                [output appendString:@"_"];
        }
    }
    
    return [NSString stringWithString:output];
}

- (NSString *)camelize{
    NSArray *components = [self componentsSeparatedByString:@"_"];
    NSMutableString *output = [NSMutableString string];
    
    for (NSUInteger i = 0; i < components.count; i++) {
        if (i == 0) {
            [output appendString:components[i]];
        } else {
            [output appendString:[components[i] capitalizedString]];
        }
    }
    
    return [NSString stringWithString:output];
}

- (NSString *)classify{
    NSString *camelcase = [self camelize];
    return [camelcase stringByReplacingCharactersInRange:NSMakeRange(0, 1) withString:[[camelcase substringWithRange:NSMakeRange(0, 1)] uppercaseString]];
}

@end
