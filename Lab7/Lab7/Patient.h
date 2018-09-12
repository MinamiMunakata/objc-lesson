//
//  Patient.h
//  Lab7
//
//  Created by Minami Munakata on 2018-09-12.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@interface Patient : NSObject

@property (nonatomic, assign) NSUInteger age;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *symptom;

- (instancetype)initWithName: (NSString *)name andAge: (NSUInteger) age andHealthCard: (Boolean) card;
- (Boolean) visitDoctor: (Doctor *) doctor;
- (void) requestMedication: (Doctor *) doctor;

@end
