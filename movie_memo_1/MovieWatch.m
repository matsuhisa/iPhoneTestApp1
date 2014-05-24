//
//  MovieWatch.m
//  movie_memo_1
//

#import "MovieWatch.h"

@implementation MovieWatch


-(id) initWithName:(NSString *)name location:(NSString *)location date:(NSDate *)date money:(NSNumber *)money
//-(id) initWithName:(NSString *)name location:(NSString *)location date:(NSDate *)date
{
    self = [super init];
    if (self) {
        _name     = name;
        _location = location;
        _date     = date;
        _money    = money;
        return self;
    }
    return nil;
}

@end
