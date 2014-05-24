//
//  movie_memoDetailViewController.m
//  movie_memo_1
//

#import "movie_memoDetailViewController.h"
#import "MovieWatch.h"

@interface movie_memoDetailViewController ()
- (void)configureView;
@end

@implementation movie_memoDetailViewController

#pragma mark - Managing the detail item

//
- (void)setMovie:(MovieWatch *) newMovie
{
    if (_movie != newMovie) {
        _movie = newMovie;
        // ビューを更新する
        [self configureView];
    }
}

//
- (void)configureView
{
    // ユーザインターフェイスを詳細アイテム用に更新する
    MovieWatch *themovie = self.movie;
    
    static NSDateFormatter *formatter = nil;
    if (formatter == nil) {
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
    }
    
    if(themovie) {
        self.movieNameLabel.text     = themovie.name;
        self.movieLocationLabel.text = themovie.location;
        self.movieDateLabel.text     = [formatter stringFromDate:(NSDate *)themovie.date];
        self.movieMoneyLabel.text    = [themovie.money stringValue];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
