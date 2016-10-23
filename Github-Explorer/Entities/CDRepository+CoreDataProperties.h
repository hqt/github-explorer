//
//  CDRepository+CoreDataProperties.h
//  
//
//  Created by Loc Nguyen on 10/23/16.
//
//

#import ".CDRepository+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface CDRepository (CoreDataProperties)

+ (NSFetchRequest<CDRepository *> *)fetchRequest;

@property (nonatomic) int64_t id;
@property (nullable, nonatomic, copy) NSString *language;
@property (nullable, nonatomic, copy) NSString *name;
@property (nonatomic) int64_t openIssueCount;
@property (nullable, nonatomic, copy) NSString *ownerName;
@property (nonatomic) int64_t startsCount;
@property (nullable, nonatomic, copy) NSString *sumary;
@property (nullable, nonatomic, copy) NSString *url;
@property (nonatomic) int64_t forksCount;
@property (nullable, nonatomic, retain) CDUser *user;

@end

NS_ASSUME_NONNULL_END
