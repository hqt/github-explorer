//
//  CDUser+CoreDataProperties.m
//  
//
//  Created by Loc Nguyen on 10/23/16.
//
//

#import "CDUser+CoreDataProperties.h"

@implementation CDUser (CoreDataProperties)

+ (NSFetchRequest<CDUser *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"User"];
}

@dynamic accessToken;
@dynamic profile;
@dynamic repositories;

@end
