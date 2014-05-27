//
//  movie_memoMasterViewController.m
//  movie_memo_1
//

#import "movie_memoMasterViewController.h"
#import "movie_memoDetailViewController.h"
#import "MovieWatchDataController.h"
#import "MovieWatch.h"
#import "AddMovieViewControllerTableViewController.h"

@interface movie_memoMasterViewController () {
}
@end


@implementation movie_memoMasterViewController

// ------------
// 新規追加画面からの処理
// ------------

// 保存
// - dataController に追加して処理
- (IBAction)done:(UIStoryboardSegue *)segue
{
    if ([[segue identifier] isEqualToString:@"ReturnInput"]) {
        AddMovieViewControllerTableViewController *addController = [segue sourceViewController];
        if (addController.movieWatch) {
            [self.dataController addMovieWatchWithSighting:addController.movieWatch];
            [[self tableView] reloadData];
        }
        //[self dismissViewControllerAnimated:YES completion:NULL];
    }
}

// キャンセル
- (IBAction)cancel:(UIStoryboardSegue *)segue
{
    if ([[segue identifier] isEqualToString:@"CancelInput"]) {
        //[self dismissViewControllerAnimated:YES completion:NULL];
    }
}

// ------------
// ------------

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.dataController = [[MovieWatchDataController alloc] init];
}

//
- (void)viewDidLoad
{
    // 編集用のボタン
    // self.editButtonItem.title = @"編集だぞ";
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    [super viewDidLoad];
}

//
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

// 配列内の MovieWatch オブジェクトの数を返す
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.dataController countOfList];
}

// プロトタイプから新しいセルを作成し、適切な MovieWatch オブジェクトからのデータを格納
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"MovieWatchCell";
    static NSDateFormatter *formatter = nil;
    if (formatter == nil) {
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
    }
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    MovieWatch *sightingAtIndex = [self.dataController objectInListAtIndex:indexPath.row];
    [[cell textLabel] setText:sightingAtIndex.name];
    [[cell detailTextLabel] setText:[formatter stringFromDate:(NSDate *)sightingAtIndex.date]];
    return cell;
}

// 編集の可否
// - http://d.hatena.ne.jp/mtmtx/20120815/1345045066
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 指定された項目を編集できるようにしないならばNOを返す。
    return YES;
    // return NO;
}

// 編集時？のメソッド
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        NSLog(@"-----------");
        NSLog(@"削除");
        //NSLog(@"selected tableview row is %ld",(long)indexPath.row);
        NSLog(@"-----------");

        [self.dataController deleteMoveWatch:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
    }
}

// 行の移動
// Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
     NSLog(@"-----------");
     NSLog(@"行の移動");
     NSLog(@"from %ld",(long)fromIndexPath.row);
     NSLog(@"to   %ld",(long)toIndexPath.row);
     NSLog(@"-----------");
     
     [self.dataController moveMovieWatch:(NSUInteger *)fromIndexPath.row toIndex:(NSUInteger)toIndexPath.row];

 }


 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
     return YES;
 }

// 
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // ShowMovieDetails
    if ([[segue identifier] isEqualToString:@"ShowMovieDetails"]) {
        movie_memoDetailViewController *detailViewController = [segue destinationViewController];
        detailViewController.movie = [self.dataController objectInListAtIndex:[self.tableView indexPathForSelectedRow].row];
    }
}

@end
