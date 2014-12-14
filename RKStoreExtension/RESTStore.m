//
//  RESTStore.m
//  RKStoreExtension
//
//  Created by Joseph Rider on 11/28/14.
//  Copyright (c) 2014 Joseph Rider. All rights reserved.
//

#import "RESTStore.h"

@implementation RESTStore

-(id)all:modelName {
    return 0;
}

-(void)find:(NSString*)modelName {
    [self.adapter find:modelName];
}

-(instancetype)init {
    if( self = [super init]){
        [self initializeStores];
    }
    return self;
}

-(void)assignAdapter:adapter {
    self.adapter = adapter;
}

-(void)didInitializeStores {}

-(void)initializeStores {
    [self didInitializeStores];
}
@end
