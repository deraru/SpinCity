//
//  Album.m
//  SpinCity
//
//  Created by Rui Onodera on 2/5/14.
//  Copyright (c) 2014 Rui Onodera. All rights reserved.
//

#import "Album.h"

@implementation Album

- (id)initWithTitle:(NSString *)title artist:(NSString *)artist summary:(NSString *)summary price:(float)price locationInStore:(NSString *)locationInStore {
    self = [super init];
    if (self) {
        _title = title;
        _artist = artist;
        _summary = summary;
        _price = price;
        _locationInStore = locationInStore;
        
        return self;
    }
    return nil;
}

@end
