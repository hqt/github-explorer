//
//  CDProfile+CoreDataProperties.m
//  
//
//  Created by Loc Nguyen on 10/23/16.
//
//

#import "CDProfile+CoreDataProperties.h"

@implementation CDProfile (CoreDataProperties)

+ (NSFetchRequest<CDProfile *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Profile"];
}

@dynamic id;
@dynamic name;
@dynamic username;
@dynamic location;
@dynamic creationDate;
@dynamic company;
@dynamic bio;
@dynamic avatarUrl;
@dynamic user;

@end
