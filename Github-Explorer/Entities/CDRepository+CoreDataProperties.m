//
//  CDRepository+CoreDataProperties.m
//  
//
//  Created by Loc Nguyen on 10/23/16.
//
//

#import "CDRepository+CoreDataProperties.h"

@implementation CDRepository (CoreDataProperties)

+ (NSFetchRequest<CDRepository *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Repository"];
}

@dynamic id;
@dynamic language;
@dynamic name;
@dynamic openIssueCount;
@dynamic ownerName;
@dynamic startsCount;
@dynamic sumary;
@dynamic url;
@dynamic forksCount;
@dynamic user;

@end
