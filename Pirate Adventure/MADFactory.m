//
//  MADFactory.m
//  Pirate Adventure
//
//  Created by Dean Murphy on 25/03/2014.
//  Copyright (c) 2014 Murphy Apps. All rights reserved.
//

#import "MADFactory.h"
#import "MADTile.h"

@implementation MADFactory

- (NSArray *)tiles {
    
    NSMutableArray *tileColumns = [[NSMutableArray alloc] initWithCapacity:4];
    
    for (int i = 1; i <= 4; i++) {
        NSMutableArray *tileRows = [[NSMutableArray alloc] initWithCapacity:3];
        for (int i2 = 1; i2 <= 3; i2++) {
            MADTile *newTile = [[MADTile alloc] init];
            newTile.story = [NSString stringWithFormat:@"Story %i.%i", i,i2];
            [tileRows addObject:newTile];
        }
        [tileColumns addObject:tileRows];
    }
    
    return tileColumns;
    
}

@end

//    // Create 12 tiles
//    MADTile *tile1 = [[MADTile alloc] init];
//    MADTile *tile2 = [[MADTile alloc] init];
//    MADTile *tile3 = [[MADTile alloc] init];
//    MADTile *tile4 = [[MADTile alloc] init];
//    MADTile *tile5 = [[MADTile alloc] init];
//    MADTile *tile6 = [[MADTile alloc] init];
//    MADTile *tile7 = [[MADTile alloc] init];
//    MADTile *tile8 = [[MADTile alloc] init];
//    MADTile *tile9 = [[MADTile alloc] init];
//    MADTile *tile10 = [[MADTile alloc] init];
//    MADTile *tile11 = [[MADTile alloc] init];
//    MADTile *tile12 = [[MADTile alloc] init];
//
//    // set story value for the tiles
//    tile1.story = @"Story 1";
//    tile2.story = @"Story 2";
//    tile3.story = @"Story 3";
//    tile4.story = @"Story 4";
//    tile5.story = @"Story 5";
//    tile6.story = @"Story 6";
//    tile7.story = @"Story 7";
//    tile8.story = @"Story 8";
//    tile9.story = @"Story 9";
//    tile10.story = @"Story 10";
//    tile11.story = @"Story 11";
//    tile12.story = @"Story 12";
//
//    // add tiles to an array to get 4x3 grid
//    NSMutableArray *firstColumn = [[NSMutableArray alloc] initWithObjects:tile1, tile2, tile3, nil];
//    NSMutableArray *secondColumn = [[NSMutableArray alloc] initWithObjects:tile4, tile5, tile6, nil];
//    NSMutableArray *thirdColumn = [[NSMutableArray alloc] initWithObjects:tile7, tile8, tile9, nil];
//    NSMutableArray *forthColumn = [[NSMutableArray alloc] initWithObjects:tile10, tile11, tile12, nil];
//    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, forthColumn, nil];
//
//    return tiles;
