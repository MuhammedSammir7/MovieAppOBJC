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
    NSString *movie;
    int year;
    NSString *relese_date;
    NSString *director;
    NSString *movie_duration;
    NSURL *poster;
}
@end

NS_ASSUME_NONNULL_END
