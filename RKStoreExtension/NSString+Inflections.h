//
//  NSString+Inflections.h
//  Clientel
//
//  Created by Joseph Rider on 11/22/14.
//  Copyright (c) 2014 Joseph Rider. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString(Inflections)
    -(NSString*)camelize;
    -(NSString*)underscore;
    -(NSString*)classify;
    -(NSString*)singularize;
    -(NSString*)pluralize;
@end
