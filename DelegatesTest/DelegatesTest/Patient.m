//
//  Patient.m
//  DelegatesTest
//
//  Created by Nikolay Berlioz on 10.09.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (BOOL) howAreYou
{
    BOOL iFeelGood = arc4random() % 2;
    
    if (!iFeelGood)
    {
        [self.delegate patientFeelsBad:self];
    }
    
    return iFeelGood;
}

- (void) takePill
{
    NSLog(@"%@ takes a pill", self.name);
}

- (void) makeShot
{
    NSLog(@"%@ takes a shot", self.name);

}

@end
