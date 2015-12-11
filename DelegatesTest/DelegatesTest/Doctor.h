//
//  Doctor.h
//  DelegatesTest
//
//  Created by Nikolay Berlioz on 10.09.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@protocol PatientDelegate;

@interface Doctor : NSObject <PatientDelegate>

@end
