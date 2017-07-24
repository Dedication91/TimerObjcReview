//
//  ViewController.h
//  TimerObjcReview
//
//  Created by Shaan Mirchandani
//  Copyright © 2017 Shaan Mirchandani. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
- (IBAction)startBtn:(id)sender;
- (IBAction)pauseBtn:(id)sender;
- (IBAction)resumeBtn:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *startProp;





@end

