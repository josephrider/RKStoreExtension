//
//  PropertyMappingStrategy.h
//  Clientel
//
//  Created by Joseph Rider on 11/25/14.
//  Copyright (c) 2014 Joseph Rider. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PropertyMappingStrategy : NSObject {
    @private
    id propertyList;
}

@property (nonatomic) id analyzer;

-(instancetype)initWithPropertyList:pList;
-(id)execute;

@end
