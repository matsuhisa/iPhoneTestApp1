//
//  movie_memoMasterViewController.h
//  movie_memo_1
//

#import <UIKit/UIKit.h>

@class MovieWatchDataController;

@interface movie_memoMasterViewController : UITableViewController
// DataController
@property (strong, nonatomic) MovieWatchDataController *dataController;

// 巻き戻しアクションメソッド
- (IBAction)done:(UIStoryboardSegue *)segue;
- (IBAction)cancel:(UIStoryboardSegue *)segue;

@end


