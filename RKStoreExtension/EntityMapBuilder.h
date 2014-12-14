//
//  EntityMapBuilder.h
//  Clientel
//
//  Created by Joseph Rider on 11/25/14.
//  Copyright (c) 2014 Joseph Rider. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PropertyMappingStrategy.h"

@interface EntityMapBuilder : NSObject {
    @protected
    id product;
}

@property (nonatomic) id buildingEntityMapFor;
@property (nonatomic) id responseDescriptor;

-(instancetype)initWithEntityName:(id)entityName;

-(void)createEntityMap;
-(void)mapModelAttributesWithStrategy:(PropertyMappingStrategy*)strategy;
-(void)createResponseDescriptor;
-(void)attachResponseDescriptor;

-(id)getProduct;

@end
