//
//  QuizViewController.m
//  Quiz
//
//  Created by Ron Welch on 9/18/13.
//  Copyright (c) 2013 Ron Welch (Work). All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        [questions addObject:@"What is 3 + 4?"];
        [answers addObject:@"7"];

        [questions addObject:@"What is the capital of New York?"];
        [answers addObject:@"Albany"];

        [questions addObject:@"From what is cognac made?"];
        [answers addObject:@"Grapes"];
         
    }
    return self;
}

- (IBAction)showQuestion:(id)sender
{
    currentQuestionIndex++;
    
    if (currentQuestionIndex == [questions count]) {
        currentQuestionIndex = 0;
    }
    
    NSString *quesiton = [questions objectAtIndex:currentQuestionIndex];
    NSLog(@"Displaying quesiton: %@", quesiton);
    
    [questionField setText:quesiton];
    
    [answerField setText:@"??"];
}

- (IBAction)showAnswer:(id)sender
{
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    [answerField setText:answer];
}

@end
