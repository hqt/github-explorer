//
//  CDUser+CoreDataProperties.h
//  
//
//  Created by Loc Nguyen on 10/23/16.
//
//

#import ".CDUser+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface CDUser (CoreDataProperties)

+ (NSFetchRequest<CDUser *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *accessToken;
@property (nullable, nonatomic, retain) CDProfile *profile;
@property (nullable, nonatomic, retain) NSSet<CDRepository *> *repositories;

@end

@interface CDUser (CoreDataGeneratedAccessors)

- (void)addRepositoriesObject:(CDRepository *)value;
- (void)removeRepositoriesObject:(CDRepository *)value;
- (void)addRepositories:(NSSet<CDRepository *> *)values;
- (void)removeRepositories:(NSSet<CDRepository *> *)values;

@end

NS_ASSUME_NONNULL_END
