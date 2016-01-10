//
//  RESTAdapter.h
//  Clientel
//
//  Created by Joseph Rider on 11/28/14.
//  Copyright (c) 2014 Joseph Rider. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import "RESTInterface.h"

@interface SupposedStore
-(id)objectManager;
-(void)didDeleteRecordOfType:identifier ofType:type;
@end

@interface RESTAdapter : NSObject <RESTInterface> {
    SupposedStore *_store;
    @private
    id baseParams;
}

@property (nonatomic, retain) id store;

-(instancetype)initWithStoreAndBaseParams:offeredStore andBaseParams:params;

-(id)getObjectManager;
-(id)getBaseParams;
-(id)getStore;

-(void)deleteRecord:(id)record;
-(void)didDeleteRecordOfType:identifier ofType:type;

@end
