//
//  ViewController.m
//  in_classs
//
//  Created by Sherwin on 2020-03-16.
//  Copyright © 2020 Sherwin. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
@interface ViewController ()
{
    AVAudioPlayer *_audioClip;
    
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

- (IBAction)playound:(id)sender {
    
    [_audioClip play];
    
}



- (IBAction)sliderValue:(id)sender {
    


}
@end
