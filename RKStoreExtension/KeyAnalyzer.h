//
//  ModelKeyAnalyzer.h
//  Clientel
//
//  Created by Joseph Rider on 11/26/14.
//  Copyright (c) 2014 Joseph Rider. All rights reserved.
//

#import "KeyAnalyzerAlgorithm.h"
#import <Foundation/Foundation.h>

@interface KeyAnalyzer : NSObject
// client sets an established algorithm
// derived using the KeyAnalyzerAlgorithm interface
@property (nonatomic) id algorithm;

@property (nonatomic) id propertyList;

-(instancetype)initWithPropertyList:pList;
-(id)analyze;

@end
