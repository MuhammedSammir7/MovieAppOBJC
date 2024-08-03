//
//  HomeViewController.m
//  MovieApp
//
//  Created by ios on 14/07/2024.
//

#import "HomeViewController.h"
#import "MoviesCell.h"
#import <SDWebImage/SDWebImage.h>
@interface HomeViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _data = [[NSMutableData alloc] init];
    _networking = [Networking new];
    [_networking getAllmovies:self];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    [_data appendData:data];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    _movies = [NSJSONSerialization JSONObjectWithData:_data options:NSJSONReadingAllowFragments error:nil];
    [_tableView reloadData];
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _movies.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    MoviesCell *cell =[tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    NSDictionary *current_dict = _movies[indexPath.row];
    cell.movieImage.layer.cornerRadius = 40;
    [cell.movieImage sd_setImageWithURL:[NSURL URLWithString:[current_dict objectForKey:@"poster"]]];
    cell.movieTitle.text = [current_dict objectForKey:@"movie"];
    
    
     return cell;
}
//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    return 200;
//}

@end
