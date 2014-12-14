//
//  RESTAdapter.m
//  Clientel
//
//  Created by Joseph Rider on 11/28/14.
//  Copyright (c) 2014 Joseph Rider. All rights reserved.
//

#import "RESTAdapter.h"

@implementation RESTAdapter
-(instancetype)initWithStoreAndBaseParams:offeredStore andBaseParams:params {
    if( self = [[self.class alloc] init]){
        store = offeredStore;
        baseParams = params;
    }
    return self;
}
-(id)getStore {
    return store;
}
-(id)getBaseParams {
    return baseParams;
}
-(id)getObjectManager {
    id objectManager = [store objectManager];
    NSLog(@"%@", objectManager);
    return [store objectManager];
}
-(void)find:modelName {}
-(void)find:modelName id:(int)pk {}
-(void)findQuery:modelName query:queryParams {}
-(void)bindToCoreData {}

@end
