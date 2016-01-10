//
//  RESTStore.h
//  RKStoreExtension
//
//  Created by Joseph Rider on 11/28/14.
//  Copyright (c) 2014 Joseph Rider. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RESTAdapter.h"

@interface RESTStore : NSObject

@property (nonatomic) RESTAdapter* adapter;

-(id)all:modelName;
-(void)find:(NSString*)modelName;
-(void)deleteRecord:record;
-(void)didDeleteRecordOfType:identifier ofType:type;

-(void)didInitializeStores;
-(void)initializeStores;

@end
