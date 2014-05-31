//
//  EditMovieTableViewController.h
//  movie_memo_1
//

#import <UIKit/UIKit.h>

@class MovieWatch;

@interface EditMovieTableViewController : UITableViewController
<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *EditNameInput;
@end
