//
//  MovieWatchDataController.h
//  movie_memo_1
//

#import <Foundation/Foundation.h>

// MovieWatch モデル
@class MovieWatch;

@interface MovieWatchDataController : NSObject
// MovieWatch モデルをいれた配列
@property (nonatomic, copy) NSMutableArray *masterMovieWatchList;

//
- (NSUInteger)countOfList;
- (MovieWatch *)objectInListAtIndex:(NSUInteger)theIndex;
- (void)addMovieWatchWithSighting:(MovieWatch *)sighting;
- (void)deleteMoveWatch:(NSUInteger)theDeleteIndex;
- (void)moveMovieWatch:(NSUInteger *)fromIndex toIndex:(NSUInteger)toIndex;
@end


