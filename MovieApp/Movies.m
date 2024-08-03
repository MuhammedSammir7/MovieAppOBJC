// Movies.m
#import "Movies.h"

@implementation Movies

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _movie = dictionary[@"movie"];
        
        // Directly assign year if it's an integer in the JSON
        id yearValue = dictionary[@"year"];
        if ([yearValue isKindOfClass:[NSNumber class]]) {
            _year = [yearValue intValue];
        } else if ([yearValue isKindOfClass:[NSString class]]) {
            _year = [yearValue intValue];
        } else {
            _year = 0; // Default value if year is not valid
        }
        
        _release_date = dictionary[@"release_date"];
        _director = dictionary[@"director"];
        _movie_duration = dictionary[@"movie_duration"];
        NSString *posterURLString = dictionary[@"poster"];
        if (posterURLString && [posterURLString isKindOfClass:[NSString class]]) {
            _poster = [NSURL URLWithString:posterURLString];
        } else {
            _poster = nil;
        }
    }
    return self;
}

@end
