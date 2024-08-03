//
//  MoviesCell.h
//  MovieApp
//
//  Created by ios on 14/07/2024.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MoviesCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *movieImage;
@property (weak, nonatomic) IBOutlet UILabel *movieTitle;

-(void)setCell:(NSString*)movieName:(UIImageView*)image;

@end

NS_ASSUME_NONNULL_END
