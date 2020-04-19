//
//  ViewController.m
//  inclass_4_sherwin
//
//  Created by Sherwin on 2020-03-17.
//  Copyright © 2020 Sherwin. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <QuartzCore/QuartzCore.h>
@interface ViewController ()
{
    AVAudioPlayer *_audioClip;
    IBOutlet UISlider *slvol;
    IBOutlet UIButton *imag;
}
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *path = [NSString stringWithFormat:@"%@/song1.mp3",[[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    
    _audioClip = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    
}
- (IBAction)spinningImage:(id)sender {
    CABasicAnimation *spiningImage = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    
    spiningImage.fromValue = [NSNumber numberWithFloat:0];
    spiningImage.toValue = [NSNumber numberWithFloat:((360*M_PI)/180)];
    spiningImage.duration = 2.0;
    spiningImage.repeatCount = 3;
    [imag.layer addAnimation:spiningImage forKey:@"360"];
}



- (IBAction)sliderVol:(id)sender {
     [_audioClip play];
    _audioClip.volume = slvol.value;
}



@end

