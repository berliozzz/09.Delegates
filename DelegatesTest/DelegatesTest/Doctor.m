//
//  Doctor.m
//  DelegatesTest
//
//  Created by Nikolay Berlioz on 10.09.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor


#pragma mark - PatientDelegate

- (void) patientFeelsBad: (Patient*) patient
{
    NSLog(@"Patient %@ is bad!", patient.name);
    
    if (patient.temperature >= 37.f && patient.temperature <= 39.f)
    {
        [patient takePill];
    }
    else if (patient.temperature > 39.f)
    {
        [patient makeShot];
    }
    else
        NSLog(@"Patient %@ should rest!", patient.name);
}

- (void) patient:(Patient*) patient hasQuestion: (NSString*) question
{
    NSLog(@"Patient %@ has a question: %@", patient.name, question);
}

@end
