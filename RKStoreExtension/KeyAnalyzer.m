//
//  ModelKeyAnalyzer.m
//  Clientel
//
//  Created by Joseph Rider on 11/26/14.
//  Copyright (c) 2014 Joseph Rider. All rights reserved.
//

#import "KeyAnalyzer.h"

@implementation KeyAnalyzer
@synthesize algorithm;
@synthesize propertyList;

-(instancetype)initWithPropertyList:pList {
    if( self = [[self.class alloc] init]) {
        self.propertyList = pList;
    }
    return self;
}

-(id)analyze {
    return [[self algorithm] execute:self];
}

@end
