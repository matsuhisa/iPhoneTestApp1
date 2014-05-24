//
//  AddMovieViewControllerTableViewController.h
//  movie_memo_1
//

#import <UIKit/UIKit.h>

@class MovieWatch;

@interface AddMovieViewControllerTableViewController : UITableViewController
<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *MovieNameInput;
@property (weak, nonatomic) IBOutlet UITextField *MovieLocationInput;
@property (weak, nonatomic) IBOutlet UITextField *MovieMoneyInput;

@property (strong, nonatomic) MovieWatch *movieWatch;

@end
