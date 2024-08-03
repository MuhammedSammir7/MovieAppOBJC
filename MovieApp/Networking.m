//
//  Networking.m
//  MovieApp
//
//  Created by ios on 14/07/2024.
//

#import "Networking.h"

@implementation Networking

- (void)getAllmovies:(nonnull UIViewController *)delegate {
    NSURL *url = [[NSURL alloc] initWithString:@"https://owen-wilson-wow-api.onrender.com/wows/random?results=5"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:delegate]; 
    [connection start];
}

@end
