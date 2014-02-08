//
//  AlbumDataController.h
//  SpinCity
//
//  Created by Rui Onodera on 2/6/14.
//  Copyright (c) 2014 Rui Onodera. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Album;

@interface AlbumDataController : NSObject

- (NSUInteger)albumCount;

- (Album *)albumAtIndex:(NSUInteger)index;

- (void)addAlbumWithTitle:(NSString *)title artist:(NSString *)artist sumarry:(NSString *)sumarry price:(float)price locationInStore:(NSString *)locationInStore;

@end
