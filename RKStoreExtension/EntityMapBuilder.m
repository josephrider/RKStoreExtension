//
//  EntityMapBuilder.m
//  Clientel
//
//  Created by Joseph Rider on 11/25/14.
//  Copyright (c) 2014 Joseph Rider. All rights reserved.
//

#import "EntityMapBuilder.h"

@implementation EntityMapBuilder

@synthesize buildingEntityMapFor;

-(instancetype)initWithEntityName:(id)entityName {
    if( self = [[self.class alloc] init] ){
        self.buildingEntityMapFor = entityName;
    }
    return self;
}

-(void)createEntityMap {}
-(void)mapModelAttributesWithStrategy:(PropertyMappingStrategy*)strategy {
    [strategy execute];
}
-(void)createResponseDescriptor {}
-(void)attachResponseDescriptor {}

-(id)getProduct {
    return product;
}

@end
