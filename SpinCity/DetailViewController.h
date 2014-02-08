//
//  DetailViewController.h
//  SpinCity
//
//  Created by Rui Onodera on 2/5/14.
//  Copyright (c) 2014 Rui Onodera. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Album;

@interface DetailViewController : UITableViewController

@property (strong, nonatomic) Album *detailItem;

@property (weak, nonatomic) IBOutlet UILabel *albumTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *artistLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextView;

@end
