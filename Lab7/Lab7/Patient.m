//
//  Patient.m
//  Lab7
//
//  Created by Minami Munakata on 2018-09-12.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@interface Patient() {
    @private
    Boolean healthCard;
}

@end

@implementation Patient

- (instancetype)initWithName: (NSString *)name andAge: (NSUInteger) age andHealthCard: (Boolean) card andSymptom: (NSString *) symptom
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _symptom = symptom;
        _prescriptions = [NSMutableArray new];
        healthCard = card;
    }
    return self;
}

- (Boolean) visitDoctor: (Doctor *) doctor {
    
    return [doctor acceptPatient: self withHealthCard: healthCard];
}

- (void) requestMedication: (Doctor *) doctor {
    // 1. doctor checking if self(patient) is in the patient list.
    if ([doctor prescribeMedication:self]) {
        NSLog(@"GOT the medication!");
    } else {
        NSLog(@"REJECTED! No medication...");
    }
    
}

@end
