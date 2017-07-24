//
//  ViewController.m
//  TimerObjcReview
//
//  Created by Shaan Mirchandani
//  Copyright © 2017 Shaan Mirchandani. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    NSTimer *timer;
    int sec, min, hr;
}




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated{
    sec=0;
    min=0;
    hr=0;
    
//    _startProp.titleLabel=@"start";
    [_startProp setTitle:@"start" forState:nil];

}
-(void)timerFunc{
    NSLog(@"timer func is working");
    if (sec<59) {
        sec++;
        
    }
    else{
        sec=0;
        min++;
    }
    if (min==60) {
        min=0;
        hr++;
    }
    _timerLabel.text=[NSString stringWithFormat:@"%d:%d %d",hr, min, sec];
    
}


- (IBAction)startBtn:(id)sender {
    
    if ([_startProp.currentTitle isEqualToString:@"start"]) {
        timer=[NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerFunc) userInfo:nil repeats:YES];
        [_startProp setTitle:@"reset"forState:nil];
    }
    sec=0;
    min = 0;
    hr = 0;
}

- (IBAction)pauseBtn:(id)sender {
    [timer invalidate];
}

- (IBAction)resumeBtn:(id)sender {
            timer=[NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerFunc) userInfo:nil repeats:YES];
}
@end
