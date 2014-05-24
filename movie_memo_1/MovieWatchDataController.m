//
//  MovieWatchDataController.m
//  movie_memo_1
//

#import "MovieWatchDataController.h"
#import "MovieWatch.h"

// クラス拡張
@interface MovieWatchDataController ()
- (void)initializeDefaultDataList;
@end

@implementation MovieWatchDataController

// 初期化の実行
- (id)init {
    if (self = [super init]) {
        [self initializeDefaultDataList];
        return self;
    }
    return nil;
}

// 初期（デフォルトの）データーを用意
- (void)initializeDefaultDataList {
    NSMutableArray *sightingList = [[NSMutableArray alloc] init];
    self.masterMovieWatchList = sightingList;
    MovieWatch *movie;
    NSDate *today = [NSDate date];
    NSNumber *money=@123;
    
    //movie = [[MovieWatch alloc] initWithName:@"Pigeon" location:@"Everywhere" date:today money:@"string"];
    //movie = [[MovieWatch alloc] initWithName:@"foo" location:@"bar" date:today];
    movie = [[MovieWatch alloc] initWithName:@"桐島、部活辞める" location:@"豊島園" date:today money:money];
    [self addMovieWatchWithSighting:movie];
}

// 
- (void)setMasterMovieWatchList:(NSMutableArray *)newList {
    if (_masterMovieWatchList != newList) {
        _masterMovieWatchList = [newList mutableCopy];
    }
}

// 追加処理
- (void)addMovieWatchWithSighting:(MovieWatch *)movie {
    [self.masterMovieWatchList addObject:movie];
}

// 数える
- (NSUInteger)countOfList {
    return [self.masterMovieWatchList count];
}


- (MovieWatch *)objectInListAtIndex:(NSUInteger)theIndex {
    return [self.masterMovieWatchList objectAtIndex:theIndex];
}

@end

