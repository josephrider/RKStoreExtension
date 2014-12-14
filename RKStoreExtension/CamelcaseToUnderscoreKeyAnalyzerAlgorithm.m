//
//  CamelcaseToUnderscoreKeyAnalyzerAlgorithm.m
//  Clientel
//
//  Created by Joseph Rider on 11/26/14.
//  Copyright (c) 2014 Joseph Rider. All rights reserved.
//

#import "CamelcaseToUnderscoreKeyAnalyzerAlgorithm.h"

@implementation CamelcaseToUnderscoreKeyAnalyzerAlgorithm

-(NSDictionary*)outputFromList:(NSArray*)list {
    NSMutableDictionary* working = [[NSMutableDictionary dictionary] init];
    
    for( int i = 0; i < list.count; i++ ){
        [working setValue:list[i] forKey:[list[i] underscore]];
    }
    
    return (NSDictionary*)working;
}
@end
