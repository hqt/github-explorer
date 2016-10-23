//
//  CDProfile+CoreDataProperties.h
//  
//
//  Created by Loc Nguyen on 10/23/16.
//
//

#import ".CDProfile+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface CDProfile (CoreDataProperties)

+ (NSFetchRequest<CDProfile *> *)fetchRequest;

@property (nonatomic) int64_t id;
@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, copy) NSString *username;
@property (nullable, nonatomic, copy) NSString *location;
@property (nullable, nonatomic, copy) NSDate *creationDate;
@property (nullable, nonatomic, copy) NSString *company;
@property (nullable, nonatomic, copy) NSString *bio;
@property (nullable, nonatomic, copy) NSString *avatarUrl;
@property (nullable, nonatomic, retain) CDUser *user;

@end

NS_ASSUME_NONNULL_END
