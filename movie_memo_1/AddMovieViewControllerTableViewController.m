//
//  AddMovieViewControllerTableViewController.m
//  movie_memo_1
//

#import "AddMovieViewControllerTableViewController.h"
#import "MovieWatch.h"


@interface AddMovieViewControllerTableViewController ()
@end

@implementation AddMovieViewControllerTableViewController

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

//
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (
        (textField == self.MovieNameInput) ||
        (textField == self.MovieLocationInput) ||
        (textField == self.MovieMoneyInput)
        ) {
        [textField resignFirstResponder];
    }
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"ReturnInput"]) {
        if (
            [self.MovieNameInput.text length] ||
            [self.MovieLocationInput.text length] ||
            [self.MovieMoneyInput.text length]
        )
        {
            MovieWatch *movie;
            NSDate *today = [NSDate date];
            //NSNumber *money = @456;
            NSNumber *money = [NSNumber numberWithInt:[self.MovieMoneyInput.text intValue]];;

            movie = [[MovieWatch alloc] initWithName:self.MovieNameInput.text location:self.MovieLocationInput.text date:today money:money];
            self.movieWatch = movie;
        }
    }
}
#pragma mark - Table view data source

@end
