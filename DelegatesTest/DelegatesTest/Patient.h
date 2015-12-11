 //
//  Patient.h
//  DelegatesTest
//
//  Created by Nikolay Berlioz on 10.09.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>



//----------------   Зазубрить этот шаблон   ----------------//

@protocol PatientDelegate;

@interface Patient : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) CGFloat temperature;

/**************** Так прописываем свойство делегата ****************/
@property (weak, nonatomic) id <PatientDelegate> delegate;

- (BOOL) howAreYou;
- (void) takePill;
- (void) makeShot;

@end

/**************** Объявление делегата ****************/
@protocol PatientDelegate
@required

/**************** Обязательно передаем себя (:(Patient*) patient)****************/

- (void) patientFeelsBad: (Patient*) patient;
- (void) patient:(Patient*) patient hasQuestion: (NSString*) qestion; //и переменную если нужно (:(NSString*) qestion)


@end