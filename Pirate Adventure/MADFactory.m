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

    // Create an array to return containing 4 arrays with 3 objects in each.
    NSMutableArray *tileColumns = [[NSMutableArray alloc] initWithCapacity:4];
    
    // Index set to pass to storyImage & storyString methods to ensure correct data returns.
    int arrayIndex = 0;
    
    // Double for loop to create array and populate with objects then add to the returning array.
    for (int i = 1; i <= 4; i++) {
        NSMutableArray *tileRows = [[NSMutableArray alloc] initWithCapacity:3];
        for (int i2 = 1; i2 <= 3; i2++) {
            MADTile *newTile = [[MADTile alloc] init];
            newTile.story = [self storyString:arrayIndex];
            newTile.background = [self storyImage:arrayIndex];
            [tileRows addObject:newTile];
            arrayIndex++;
        }
        [tileColumns addObject:tileRows];
    }
    
    return tileColumns;
}

- (UIImage *)storyImage:(int)atIndex {
    
    switch (atIndex) {
        case 0:
            return [UIImage imageNamed:@"PirateStart.jpg"];
        case 1:
            return [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
        case 2:
            return [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
        case 3:
            return [UIImage imageNamed:@"PirateParrot.jpg"];
        case 4:
            return [UIImage imageNamed:@"PirateWeapons.jpeg"];
        case 5:
            return [UIImage imageNamed:@"PiratePlank.jpg"];
        case 6:
            return [UIImage imageNamed:@"PirateShipBattle.jpeg"];
        case 7:
            return [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
        case 8:
            return [UIImage imageNamed:@"PirateTreasure.jpeg"];
        case 9:
            return [UIImage imageNamed:@"PirateAttack.jpg"];
        case 10:
            return [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    }
    
    return [UIImage imageNamed:@"PirateBoss.jpeg"];
}

- (NSString *)storyString:(int)atIndex {
    
    switch (atIndex) {
        case 0:
            return @"Captain, we need a fearless leader such as yourself to undertake a voyage. You just need to stop the evil Pirate Boss. Would you like a blunted sword to get started?";
        case 1:
            return @"You have come across an armory, would you like to upgrade your armor to steel armor?";
        case 2:
            return @"A mysterious dock appears on the horizon. Should we stop and ask for directions?";
        case 3:
            return @"You have found a parrot. This can be used in your Armor slot. Parots are a great defender and are very loyal to their Captain.";
        case 4:
            return @"You have stumbled upon a cache of Weapons. Would you like to upgrade to a Pistol?";
        case 5:
            return @"You have been captured by pirates and are ordered to walk the plank!";
        case 6:
            return @"You have sighted a pirate battle off the coast. Should we intervene?";
        case 7:
            return @"A Legend of the Deep, The Mighty Kraken appears!";
        case 8:
            return @"You have stumbled upon a hidden cave of pirate treasure!";
        case 9:
            return @"A group of pirates attempt to board your ship.";
        case 10:
            return @"In the deep of the sea, many things live and many things can be found. Will the fortune bring help or ruin?";
    }
    
    return @"Your final faceoff with the fearsome pirate boss!";
}

@end
