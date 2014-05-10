//
//  movie_memoDetailViewController.m
//  movie_memo_1
//
//  Created by 松久浩伸 on 2014/05/10.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "movie_memoDetailViewController.h"

@interface movie_memoDetailViewController ()
- (void)configureView;
@end

@implementation movie_memoDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
