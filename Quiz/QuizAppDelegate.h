//
//  QuizAppDelegate.h
//  Quiz
//
//  Created by Ron Welch on 9/18/13.
//  Copyright (c) 2013 Ron Welch (Work). All rights reserved.
//

#import <UIKit/UIKit.h>

@class QuizViewController;

@interface QuizAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) QuizViewController *viewController;

@end
