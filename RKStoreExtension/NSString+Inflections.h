//
//  NSString+Inflections.h
//  Clientel
//
//  Created by Joseph Rider on 11/22/14.
//  Copyright (c) 2014 Joseph Rider. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RKStoreExtension/NSString+InflectorKit.h>

@interface NSString(Inflections)
    -(NSString*)camelize;
    -(NSString*)underscore;
    -(NSString*)classify;
@end
