//
//  AlbumDataController.m
//  SpinCity
//
//  Created by Rui Onodera on 2/6/14.
//  Copyright (c) 2014 Rui Onodera. All rights reserved.
//

#import "AlbumDataController.h"
#import "Album.h"

@interface AlbumDataController ()

@property (nonatomic, readonly) NSMutableArray *albumList;

-(void)initializeDefaultAlbums;

@end

@implementation AlbumDataController

- (id)init {
    self = [super init];
    
    if (self) {
        _albumList = [[NSMutableArray alloc] init];
        [self initializeDefaultAlbums];
        return self;
    }
    
    return nil;
}

- (void)initializeDefaultAlbums {
    NSString *pathToAlbumPlist = [[NSBundle mainBundle] pathForResource:@"AlbumArray" ofType:@"plist"];
    NSArray *defaultAlbumPlist = [NSArray arrayWithContentsOfFile:pathToAlbumPlist];
    for (NSDictionary *albumInfo in defaultAlbumPlist) {
        [self addAlbumWithTitle:albumInfo[@"title"] artist:albumInfo[@"artist"] sumarry:albumInfo[@"summary"] price:[albumInfo[@"price"] floatValue] locationInStore:albumInfo[@"locationInStore"]];
    }
}

- (void)addAlbumWithTitle:(NSString *)title artist:(NSString *)artist sumarry:(NSString *)sumarry price:(float)price locationInStore:(NSString *)locationInStore {
    Album *newAlbum = [[Album alloc] initWithTitle:title artist:artist summary:sumarry price:price locationInStore:locationInStore];
    [self.albumList addObject:newAlbum];
}

- (NSUInteger)albumCount {
    return [self.albumList count];
}

- (Album *)albumAtIndex:(NSUInteger)index {
    return [self.albumList objectAtIndex:index];
}

@end
