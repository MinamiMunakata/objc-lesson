//
//  QuestionFactory.h
//  Lab5
//
//  Created by Minami Munakata on 2018-09-10.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

@property (nonatomic, strong) NSArray *questionTypes;

- (Question *) genarateRandomQuestion;

@end
