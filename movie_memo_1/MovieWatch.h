//
//  MovieWatch.h
//  movie_memo_1
//

#import <Foundation/Foundation.h>
#import "MovieWatch.h"

@interface MovieWatch : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *location;
@property (nonatomic, strong) NSDate *date;
@property (nonatomic, assign) NSNumber *money;

// 初期化
-(id)initWithName:(NSString *)name location:(NSString *)location date:(NSDate *)date money:(NSNumber *)money;
@end
