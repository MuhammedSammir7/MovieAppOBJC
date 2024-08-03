//
//  HomeViewController.h
//  MovieApp
//
//  Created by ios on 14/07/2024.
//

// HomeViewController.h
#import <UIKit/UIKit.h>
#import "Movies.h"
#import "MoviesCell.h"
#import "MovieDetailsVC.h"
#import <SDWebImage/SDWebImage.h>

@interface HomeViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray<Movies *> *movies;
@property (nonatomic, strong) NSMutableData *data;

@end
