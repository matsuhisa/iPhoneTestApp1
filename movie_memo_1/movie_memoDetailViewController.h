//
//  movie_memoDetailViewController.h
//  movie_memo_1
//

#import <UIKit/UIKit.h>

@class MovieWatch;

@interface movie_memoDetailViewController : UITableViewController

@property (strong, nonatomic) MovieWatch *movie;
@property (weak, nonatomic) IBOutlet UILabel *movieNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *movieLocationLabel;
@property (weak, nonatomic) IBOutlet UILabel *movieDateLabel;
@property (weak, nonatomic) IBOutlet UILabel *movieMoneyLabel;

// 巻き戻しアクションメソッド
- (IBAction)editDone:(UIStoryboardSegue *)segue;
- (IBAction)editCancel:(UIStoryboardSegue *)segue;

@end
