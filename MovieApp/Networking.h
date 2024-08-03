//
//  Networking.h
//  MovieApp
//
//  Created by ios on 14/07/2024.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface Networking : NSObject <NSURLConnectionDelegate,NSURLConnectionDataDelegate>
-(void)getAllmovies:(UIViewController*)delegate;

@end

NS_ASSUME_NONNULL_END
