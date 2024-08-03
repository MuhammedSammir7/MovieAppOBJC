//
//  HomeViewController.h
//  MovieApp
//
//  Created by ios on 14/07/2024.
//

#import <UIKit/UIKit.h>
#import "Networking.h"
NS_ASSUME_NONNULL_BEGIN

@interface HomeViewController : UIViewController <NSURLConnectionDelegate,NSURLConnectionDataDelegate,UITableViewDelegate,UITableViewDataSource>

@property Networking *networking;
@property NSMutableData *data;
@property NSMutableArray *movies;


@end

NS_ASSUME_NONNULL_END
