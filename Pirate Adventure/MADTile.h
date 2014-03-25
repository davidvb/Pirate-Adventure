//
//  MADtiles.h
//  Pirate Adventure
//
//  Created by Dean Murphy on 24/03/2014.
//  Copyright (c) 2014 Murphy Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MADTile : NSObject

@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *background;
@property (strong, nonatomic) NSString *actionButtonName;

@end
