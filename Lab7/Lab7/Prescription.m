//
//  Prescription.m
//  Lab7
//
//  Created by Minami Munakata on 2018-09-12.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import "Prescription.h"

@implementation Prescription

- (instancetype)initWithPatient: (Patient *) patient  andDoctor: (Doctor *) doctor andSymptom: (NSString *) Symptom
{
    self = [super init];
    if (self) {
        _patient = patient;
        _doctor = doctor;
        _symptom = Symptom;
    }
    return self;
}

@end
