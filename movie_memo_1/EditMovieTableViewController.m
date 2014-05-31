//
//  EditMovieTableViewController.m
//  movie_memo_1
//

#import "EditMovieTableViewController.h"
#import "MovieWatch.h"

@interface EditMovieTableViewController ()
@end

@implementation EditMovieTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source
/*
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}
*/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

}
@end
