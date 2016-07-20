//
//  RESTAdapter.m
//  Clientel
//
//  Created by Joseph Rider on 11/28/14.
//  Copyright (c) 2014 Joseph Rider. All rights reserved.
//

#import "RESTAdapter.h"

@implementation RESTAdapter

@synthesize store = _store;

-(instancetype)initWithStoreAndBaseParams:offeredStore andBaseParams:params {
    if( self = [[self.class alloc] init]){
        [self setStore:offeredStore];
        baseParams = params;
    }
    return self;
}
-(id)getStore {
    return [self store];
}
-(id)getBaseParams {
    return baseParams;
}
-(id)getObjectManager {
    id objectManager = [[self store] objectManager];
    return [[self store] objectManager];
}
-(void)find:modelName {}
-(void)find:modelName identifier:(int)pk {}
-(void)findQuery:modelName query:queryParams {}
-(void)deleteRecord:(id)record {}
-(void)createRecord:(id)record {}

@end
