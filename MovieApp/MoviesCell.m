//
//  MoviesCell.m
//  MovieApp
//
//  Created by ios on 14/07/2024.
//

#import "MoviesCell.h"

@implementation MoviesCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
    
}

- (void)setCell:(nonnull NSString *)movieName :(nonnull UIImageView *)image {
    self.movieImage = image;
    self.movieTitle.text = movieName;
}

@end
