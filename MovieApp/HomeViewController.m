//
//  HomeViewController.m
//  MovieApp
//
//  Created by ios on 14/07/2024.
//

#import "HomeViewController.h"
#import "MoviesCell.h"
#import <SDWebImage/SDWebImage.h>
#import "MovieDetailsVC.h"
#import "Networking.h"
@interface HomeViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) Networking *networking;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.data = [[NSMutableData alloc] init];
    self.movies = [[NSMutableArray alloc] init];
    self.networking = [Networking new]; // Initialize the networking property
    [self.networking getAllmovies:self];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    [self.data appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSError *error;
    NSArray *moviesData = [NSJSONSerialization JSONObjectWithData:self.data options:NSJSONReadingAllowFragments error:&error];
    
    if (error) {
        NSLog(@"Error parsing JSON: %@", error.localizedDescription);
        NSLog(@"Raw JSON data: %@", [[NSString alloc] initWithData:self.data encoding:NSUTF8StringEncoding]);
    } else {
        [self.movies removeAllObjects]; // Clear any existing data
        for (NSDictionary *movieDict in moviesData) {
            Movies *movie = [[Movies alloc] initWithDictionary:movieDict];
            if (movie) {
                [self.movies addObject:movie];
            } else {
                NSLog(@"Failed to create movie object from dictionary: %@", movieDict);
            }
        }
        
        NSLog(@"Movies array: %@", self.movies);
        
        // Ensure reloadData is called on the main thread
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableView reloadData];
        });
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.movies.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MoviesCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    Movies *movie = self.movies[indexPath.row];
    cell.movieTitle.text = movie.movie;
    cell.movieImage.layer.cornerRadius = 40;
    [cell.movieImage sd_setImageWithURL:movie.poster];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    MovieDetailsVC *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"MovieDetailsVC"];
    vc.movie = self.movies[indexPath.row]; // Pass the selected movie
    [self.navigationController pushViewController:vc animated:YES];
}

@end
