//
//  RESTInterface.h
//  Clientel
//
//  Created by Joseph Rider on 11/27/14.
//  Copyright (c) 2014 Joseph Rider. All rights reserved.
//

#ifndef Clientel_RESTInterface_h
#define Clientel_RESTInterface_h

@protocol RESTInterface <NSObject>

-(void)find:(NSString*)modelName;
-(void)find:(NSString*)modelName success:(void ( ^ ) ( id *operation , id *mappingResult ))success failure:(void ( ^ ) ( id *operation , NSError *error ))failure;
-(void)find:modelName id:(int)pk;
-(void)findQuery:modelName query:queryParams;

@end

#endif
