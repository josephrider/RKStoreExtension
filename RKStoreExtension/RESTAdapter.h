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
@end

@interface RESTAdapter : NSObject <RESTInterface> {
    @private
    id store;
    id baseParams;
}

-(instancetype)initWithStoreAndBaseParams:offeredStore andBaseParams:params;

-(id)getObjectManager;
-(id)getBaseParams;
-(id)getStore;

-(void)bindToCoreData;
-(void)find:modelName;
-(void)find:modelName id:(int)pk;
-(void)findQuery:modelName query:queryParams;
@end
