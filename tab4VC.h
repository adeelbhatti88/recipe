//
//  tab4VC.h
//  TablehomeworkFinal
//
//  Created by Studio 300 Patron on 11/5/18.
//  Copyright © 2018 Studio 300 Patron. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface tab4VC : UIViewController
{
    AVAudioPlayer *player;
    NSTimer *timer;
    IBOutlet UIProgressView *avgVolume;
    IBOutlet UIProgressView *peakVolume;
    IBOutlet UIButton *playPauseBtn;
    IBOutlet UISlider *volumeSlider;
    IBOutlet UISlider *timeScale;
    
}

@property (retain) AVAudioPlayer *player;
@property (retain) NSString *path;

-(IBAction)play:(id)sender;
-(IBAction)changeVolume:(id)sender;
-(IBAction)changePlayerTime:(id)sender;

@property (strong, nonatomic) NSString *inLabelText;
@property (nonatomic) NSInteger inRow;
@property (nonatomic) NSInteger inSection;

@property (nonatomic) IBOutlet UILabel *showSection;
@property (nonatomic) IBOutlet UILabel *outLabel;
@property (nonatomic) IBOutlet UILabel *showRow;

@end
