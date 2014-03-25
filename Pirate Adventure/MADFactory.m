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

    // Strings containing the story
    NSString *story1 = @"Captain, we need a fearless leader such as yourself to undertake a voyage. You just need to stop the evil Pirate Boss. Would you like a blunted sword to get started?";
    NSString *story2 = @"You have come across an armory, would you like to upgrade your armor to steel armor?";
    NSString *story3 = @"A mysterious dock appears on the horizon. Should we stop and ask for directions?";
    NSString *story4 = @"You have found a parrot. This can be used in your Armor slot. Parots are a great defender and are very loyal to their Captain.";
    NSString *story5 = @"You have stumbled upon a cache of Weapons. Would you like to upgrade to a Pistol?";
    NSString *story6 = @"You have been captured by pirates and are ordered to walk the plank!";
    NSString *story7 = @"You have sighted a pirate battle off the coast. Should we intervene?";
    NSString *story8 = @"A Legend of the Deep, The Mighty Kraken appears!";
    NSString *story9 = @"You have stumbled upon a hidden cave of pirate treasure!";
    NSString *story10 = @"A group of pirates attempt to board your ship.";
    NSString *story11 = @"In the deep of the sea, many things live and many things can be found. Will the fortune bring help or ruin?";
    NSString *story12 = @"Your final faceoff with the fearsome pirate boss!";
    
    // pointers to the background images
    UIImage *image1 = [UIImage imageNamed:@"PirateStart.jpg"];
    UIImage *image2 = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    UIImage *image3 = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    UIImage *image4 = [UIImage imageNamed:@"PirateParrot.jpg"];
    UIImage *image5 = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    UIImage *image6 = [UIImage imageNamed:@"PiratePlank.jpg"];
    UIImage *image7 = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    UIImage *image8 = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    UIImage *image9 = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    UIImage *image10 = [UIImage imageNamed:@"PirateAttack.jpg"];
    UIImage *image11 = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    UIImage *image12 = [UIImage imageNamed:@"PirateBoss.jpeg"];

    // Add both the stories and images to an array
    NSArray *storyArray = [[NSArray alloc] initWithObjects:story1, story2, story3, story4, story5, story6, story7, story8, story9, story10, story11, story12, nil];
    
    NSArray *imagesArray = [[NSArray alloc] initWithObjects:image1, image2, image3, image4, image5, image6, image7, image8, image9, image10, image11, image12, nil];
    
    // Create an array to return containing 4 arrays with 3 objects in each.
    NSMutableArray *tileColumns = [[NSMutableArray alloc] initWithCapacity:4];
    
    // Index set to add story & image to objects before they enter array
    int arrayIndex = 0;
    
    // Double for loop to create array and populate with objects. 
    for (int i = 1; i <= 4; i++) {
        NSMutableArray *tileRows = [[NSMutableArray alloc] initWithCapacity:3];
        for (int i2 = 1; i2 <= 3; i2++) {
            MADTile *newTile = [[MADTile alloc] init];
            newTile.story = [storyArray objectAtIndex:arrayIndex];
            newTile.background = [imagesArray objectAtIndex:arrayIndex];
            [tileRows addObject:newTile];
            arrayIndex++;
        }
        [tileColumns addObject:tileRows];
    }
    
    return tileColumns;
    
}

@end


