//
//  movie_memoDetailViewController.h
//  movie_memo_1
//
//  Created by 松久浩伸 on 2014/05/10.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface movie_memoDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
