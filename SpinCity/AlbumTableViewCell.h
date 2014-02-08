//
//  AlbumTableViewCell.h
//  SpinCity
//
//  Created by Rui Onodera on 2/6/14.
//  Copyright (c) 2014 Rui Onodera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlbumTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *albumTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *albumSummaryLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;

@end
