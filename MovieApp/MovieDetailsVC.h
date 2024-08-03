//
//  MovieDetailsVC.h
//  MovieApp
//
//  Created by ios on 03/08/2024.
//

#import <UIKit/UIKit.h>
#import "Movies.h"
NS_ASSUME_NONNULL_BEGIN

@interface MovieDetailsVC : UIViewController
@property int index;
@property (nonatomic, strong) Movies *movie;
@end

NS_ASSUME_NONNULL_END
