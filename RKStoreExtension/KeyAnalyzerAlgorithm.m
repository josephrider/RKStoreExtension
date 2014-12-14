//
//  ModelKeyAnalyzerAlgorithm.m
//  Clientel
//
//  Created by Joseph Rider on 11/26/14.
//  Copyright (c) 2014 Joseph Rider. All rights reserved.
//

#import "KeyAnalyzer.h"
#import "KeyAnalyzerAlgorithm.h"

@implementation KeyAnalyzerAlgorithm
-(id)execute:analyzer{
    return [self outputFromList:[analyzer propertyList]];
}

-(id)outputFromList:list {
    return 0;
}
@end
