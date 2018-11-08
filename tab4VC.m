//
//  tab4VC.m
//  TablehomeworkFinal
//
//  Created by Studio 300 Patron on 11/5/18.
//  Copyright © 2018 Studio 300 Patron. All rights reserved.
//

#import "tab4VC.h"

@interface tab4VC ()

@end

@implementation tab4VC
@synthesize inRow, inLabelText, inSection;
@synthesize outLabel, showRow, showSection;
@synthesize player, path;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // prep Audio Player local variable
    NSError *myError;
    
    //pathforresource is where your mp3 file name would go
    
    
    if (!player){
        NSLog(@"viewDidLoad:error %@", [myError localizedDescription]);
        NSLog(@"viewDidLoad:failure reason %@", [myError localizedFailureReason]);
        NSLog(@"viewDidLoad:recovery options %@", [myError localizedRecoveryOptions]);
        NSLog(@"viewDidLoad:recovery suggestions %@",[myError localizedRecoverySuggestion]);
    }
    
    [player prepareToPlay];
    player.meteringEnabled = YES;
    avgVolume.progress = 0.0f;
    peakVolume.progress = 0.0f;
    
    timeScale.minimumValue = 0;
    timeScale.maximumValue = player.duration;
    
    //BEGINING OF THE BREAKFAST SECTION
    if(inRow == 0 && inSection == 0)
    {

        NSError *myError;
        path = [[NSBundle mainBundle] pathForResource:@"voice1" ofType:@"m4a"];
        player = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:&myError];
        outLabel.text = self.inLabelText;
        showSection.text = [NSString stringWithFormat:@"Simmer uncovered for 3 to 5 minutes until thickened, stirring occasionally. Remove from heat and let cool slightly.Divide equally between two bowls. Drizzle each serving with 1/2 teaspoon honey.%lu", inSection];
    }
    
    if(inRow == 1 && inSection == 0)
    {
        
        NSError *myError;
        path = [[NSBundle mainBundle] pathForResource:@"voice2" ofType:@"m4a"];
        player = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:&myError];
        outLabel.text = self.inLabelText;
        outLabel.text = self.inLabelText;
        showSection.text = [NSString stringWithFormat:@" Spray or lightly grease a large skillet and heat over medium heat.Crack 3 eggs into a glass measuring cup and beat with a fork or whisk until scrambled. Pour eggs into heated skillet, swirling the pan to coat the bottom. Cover and let cook until eggs are firm, about 2 minutes.  %lu", inSection];
    }
    
    
    //BEGINING OF THE DESERT SECTION
    if(inRow == 0 && inSection == 1)
    {
        NSError *myError;
        path = [[NSBundle mainBundle] pathForResource:@"voice3" ofType:@"m4a"];
        player = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:&myError];
        outLabel.text = self.inLabelText;
        showRow.text = [NSString stringWithFormat:@"1 cup of Greek Yogurt, 1 Scoop of your favorite protein powder %lu", inRow];
        showSection.text = [NSString stringWithFormat:@"Add 1 cup of Greek Yogurt and 1 Scoop of your favorite protein powder into a bowl and mix, you can add whatever favorite toppings you like and enjoy! %lu", inSection];
    }
    
    if(inRow == 1 && inSection == 1)
    {
        outLabel.text = self.inLabelText;
        showRow.text = [NSString stringWithFormat:@"1 Scoop of your favorite protein powder, Frozen Bannana, Milk"];
        showSection.text = [NSString stringWithFormat:@"Add all of the ingrediants above into a Blender, Blend until no chunks are visible, pour into a glass ane enjoy! %lu", inSection];
    }
    
    //BEGINING OF THE DINNER SECTION
    if(inRow == 0 && inSection == 2)
    {
        outLabel.text = self.inLabelText;
        showRow.text = [NSString stringWithFormat:@"1 cup of Rice, 1 Can of Black Beans %lu", inRow];
        showSection.text = [NSString stringWithFormat:@"Add 1 cup of Rice and 1 Can of Black Beans into a cooking pot, place the pot over a stove. Add 2 cups of water. Let the water come to a boil, once that happens, place a lid on top and turn off the heat. wait 15, 20 minutes. Add your favorite seasonings and enjoy! %lu", inSection];
    }
    
    if(inRow == 1 && inSection == 2)
    {
        outLabel.text = self.inLabelText;
        showRow.text = [NSString stringWithFormat:@"romaine, tomatoes, Swiss cheese, almonds if desired, Parmesan cheese"];
        showSection.text = [NSString stringWithFormat:@"In a large serving bowl, toss the romaine, tomatoes, Swiss cheese, almonds if desired, Parmesan cheese and bacon. Shake dressing; pour over salad and toss. Add croutons and serve immediately. %lu", inSection];
    }
    
    //BEGINING OF LUNCH SECTION
    if(inRow == 0 && inSection == 3)
    {
        outLabel.text = self.inLabelText;
        showRow.text = [NSString stringWithFormat:@"1 egg, 1 can of Tuna, 3 tablespoons sweet pickle relish, celery, 1 pinch ground black pepper.  %lu", inRow];
        showSection.text = [NSString stringWithFormat:@"Place egg in a saucepan and cover with cold water. Bring water to a boil and immediately remove from heat. Cover and let egg stand in hot water for 10 to 12 minutes. Remove from hot water; cool for 5 minutes. Peel and chop into bite-sized pieces.In a medium bowl, mix together tuna and mayonnaise. Mix in egg, celery, relish, and black pepper. %lu", inSection];
    }
    
    if(inRow == 1 && inSection == 3)
    {
        outLabel.text = self.inLabelText;
        showRow.text = [NSString stringWithFormat:@"Bread of any kind, Mozeralla Cheese"];
        showSection.text = [NSString stringWithFormat:@"Slice the break in half, put mozeralla cheese strips between the bread, put on a stove top with medium heat, cook until bread crust is brown and the cheese is melted, Servce and enjoy! %lu", inSection];
    }
}

-(IBAction)play:(id)sender{
    static BOOL isFirstPush = YES; //we will set up timer only on the first push of the button
    
    if (isFirstPush) {
        //setup timer to update controls
        timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(updateUI:) userInfo:nil repeats:YES];
        isFirstPush = NO;
    }
    if ([playPauseBtn.currentTitle isEqual:@"Play"]){
        volumeSlider.value = player.volume;
        volumeSlider.enabled = YES;
        
        //switch label text
        [playPauseBtn setTitle:@"Pause" forState:UIControlStateNormal];
        [playPauseBtn setEnabled:YES];
        [player play];
    } else if ([playPauseBtn.currentTitle isEqual:@"Pause"]){
        [playPauseBtn setTitle:@"Play" forState:UIControlStateNormal];
        [playPauseBtn setEnabled:YES];
        [player pause];
    }
}

-(IBAction)changeVolume:(id)sender{
    player.volume = volumeSlider.value;
}

//updating values on screen
-(void)updateUI:(id)sender {
    [player updateMeters];
    
    
    float avg = -1 * [player averagePowerForChannel:0];
    float peak = -1  * [player peakPowerForChannel:0];
    
    avgVolume.progress = avg/20;
    peakVolume.progress = peak/20;
    
    NSLog(@"Playing %d", player.playing);
    NSLog(@"avg %f, peak %f, avg.progress %f, peak.progress %f", avg, peak, avgVolume.progress, peakVolume.progress);
    
    //invalidate timer when we reach to the end of play
    if (player.playing == 0){
        [timer invalidate];
        [playPauseBtn setTitle:@"Play" forState:UIControlStateNormal];
        timeScale.value = 0;
        [playPauseBtn setEnabled:YES];
    }
}

-(IBAction)changePlayerTime:(id)sender{
    
    player.currentTime = timeScale.value;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
