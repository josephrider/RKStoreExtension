//
//  PropertyMappingStrategy.m
//  Clientel
//
//  Created by Joseph Rider on 11/25/14.
//  Copyright (c) 2014 Joseph Rider. All rights reserved.
//

#import "PropertyMappingStrategy.h"
#import "KeyAnalyzer.h"

@implementation PropertyMappingStrategy
@synthesize analyzer;

-(instancetype)initWithPropertyList:pList {
    if (self = [[self.class alloc] init]) {
        propertyList = pList;
        // reasonable default
        self.analyzer = [[KeyAnalyzer alloc] initWithPropertyList:pList];
    }
    return self;
}

-(id)execute {
    return [self createMapping];
}

-(id)createMapping {
    return [self.analyzer analyze];
}

@end
