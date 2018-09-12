//
//  Prescription.h
//  Lab7
//
//  Created by Minami Munakata on 2018-09-12.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h" // it means importing twice;

@interface Prescription : NSObject

@property (nonatomic, strong) Patient *patient;
@property (nonatomic, strong) NSString *symptom;
@property (nonatomic, strong) Doctor *doctor;

- (instancetype)initWithPatient: (Patient *) patient  andDoctor: (Doctor *) doctor andSymptom: (NSString *) Symptom;

@end
