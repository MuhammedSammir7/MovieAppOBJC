//
//  Movies.h
//  MovieApp
//
//  Created by ios on 14/07/2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Movies : NSObject
{
}
@property (nonatomic, strong) NSString *movie;
@property (nonatomic, assign) int year;
@property (nonatomic, strong) NSString *release_date;
@property (nonatomic, strong) NSString *director;
@property (nonatomic, strong) NSString *movie_duration;
@property (nonatomic, strong) NSURL *poster;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end

NS_ASSUME_NONNULL_END
