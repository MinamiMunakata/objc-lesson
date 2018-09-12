//
//  Doctor.m
//  Lab7
//
//  Created by Minami Munakata on 2018-09-12.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import "Doctor.h"

@interface Doctor() {
@private
    NSMutableArray *patientList;
    NSMutableArray *prescriptions;
}

@end

@implementation Doctor

- (instancetype)initWithName: (NSString *)name andSpecialization: (NSString *) specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        patientList = [NSMutableArray new];
        prescriptions = [NSMutableArray new];
    }
    return self;
}

- (Boolean) acceptPatient: (Patient *) patient withHealthCard: (Boolean) healthCard {
    if (healthCard) {
        [patientList addObject:patient];
        NSLog(@"Successfully added to the patient list.");
        return true;
    } else {
        NSLog(@"Invalid HealthCard");
        return false;
    }
}

- (Boolean) prescribeMedication: (Patient *) patient {
    if ([patientList containsObject:patient]) {
        NSLog(@"Medication on the way...");
        // 1. check the symptom.
        NSString *symptom = [patient symptom];
        // 2. create a prescription.
        Prescription *prescription = [[Prescription alloc] initWithPatient:patient andDoctor:self andSymptom:symptom];
        // 3. give the perscription to the patient.
        [[patient prescriptions]addObject:prescription];
        [prescriptions addObject:prescription];
        // 4. give the medication.
        return true;
    } else {
        NSLog(@"You are not my patient.");
        return false;
    }
}


@end
