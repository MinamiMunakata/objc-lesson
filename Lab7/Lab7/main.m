//
//  main.m
//  Lab7
//
//  Created by Minami Munakata on 2018-09-12.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doctor *doctor = [[Doctor alloc] initWithName:@"Steve" andSpecialization:@"Cardiologists"];
        Patient *robert = [[Patient alloc] initWithName:@"Robert" andAge:80 andHealthCard:true andSymptom:@"Polpitations"];
        Patient *michel = [[Patient alloc] initWithName:@"Michel" andAge:75 andHealthCard:false andSymptom:@"Short breath"];
        if ([robert visitDoctor:doctor]) {
            [robert requestMedication:doctor];
            [michel requestMedication:doctor];
        }
    }
    return 0;
}
