//
//  MovieDetailsVC.m
//  MovieApp
//
//  Created by ios on 03/08/2024.
//

#import "MovieDetailsVC.h"
#import <SDWebImage/SDWebImage.h>
@interface MovieDetailsVC ()
@property (weak, nonatomic) IBOutlet UIImageView *movieImage;
@property (weak, nonatomic) IBOutlet UILabel *movieTitleLbl;
@property (weak, nonatomic) IBOutlet UILabel *movieYearLbl;
@property (weak, nonatomic) IBOutlet UILabel *movieRelaseDateLbl;
@property (weak, nonatomic) IBOutlet UILabel *movieDirectorLbl;
@property (weak, nonatomic) IBOutlet UILabel *movieDurationLbl;


@end

@implementation MovieDetailsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (self.movie) {
        
        self.movieTitleLbl.text = self.movie.movie;
        [self.movieImage sd_setImageWithURL: self.movie.poster];
        self.movieYearLbl.text = [NSString stringWithFormat:@"%d", self.movie.year];
        self.movieDirectorLbl.text = self.movie.director;
        self.movieDurationLbl.text = self.movie.movie_duration;
        self.movieRelaseDateLbl.text = self.movie.release_date;
        
        }
}


@end
