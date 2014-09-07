//
//  ViewControllerTwo.m
//  SMBImageView
//
//  Created by Soumen Bhuin on 11/05/12.
//  Copyright (C) 2012 SMB. All rights reserved.
//

#import "GalleryViewController.h"

@implementation GalleryViewController
@synthesize vw0;
@synthesize vw1;
@synthesize vw2;
@synthesize vw3;
@synthesize vw4;
@synthesize vw5;
@synthesize vw6;
@synthesize vw7;
@synthesize vw8;
@synthesize vw9;
@synthesize vw10;
@synthesize vw11;
@synthesize vw12;
@synthesize vw13;
@synthesize vw14;
@synthesize vw15;
@synthesize vw16;
@synthesize vw17;
@synthesize vw18;
@synthesize vw19;
@synthesize vw20;
@synthesize vw21;
@synthesize vw22;
@synthesize vw23;
@synthesize vw24;
@synthesize vw25;
@synthesize vw26;
@synthesize vw27;
@synthesize vw28;
@synthesize vw29;
@synthesize vw30;
@synthesize vw31;
@synthesize vw32;
@synthesize vw33;
@synthesize vw34;
@synthesize vw35;
@synthesize vw36;
@synthesize vw37;
@synthesize vw38;
@synthesize vw39;
@synthesize scroll;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.scroll setContentSize:CGSizeMake(320, 800)];
    // Do any additional setup after loading the view from its nib.
    [self.vw0 loadImageFromURL:[NSURL URLWithString:@"http://lh4.ggpht.com/-BFR3ZR9jtq4/T7bgG-5WKaI/AAAAAAAACk8/gC4A8Ngaf3A/s144-p/DSC_5538.jpg"]];
    [self.vw1 loadImageFromURL:[NSURL URLWithString:@"http://lh4.ggpht.com/-tO-0VjzYrBs/T7QIbR_uSeI/AAAAAAAAAeA/-yjsjzbqiwY/s144-p/DSC_3523_HDR.jpg"]];
    [self.vw2 loadImageFromURL:[NSURL URLWithString:@"http://lh6.ggpht.com/-ywhqFY8A9Mo/Tqy3C1x6DRI/AAAAAAAAFoc/1geHZtG32HM/s144-p/_DSC2729-Edit_1150.jpg"]];
    [self.vw3 loadImageFromURL:[NSURL URLWithString:@"http://lh3.ggpht.com/-awH1ilcwyXk/T56ViaVL5KI/AAAAAAAAGU4/nCDQeuhQqf8/s144-p/2012-RvK-10-China-01708%252528_VK11518%252529E01.jpg"]];
    [self.vw4 loadImageFromURL:[NSURL URLWithString:@"http://lh3.ggpht.com/-BIEX4Kia-Mw/TvuLVvpF6PI/AAAAAAAAGtM/4SRo2IXRMDM/s144-p/henrikj_080520_6301%252520-%252520der%252520-%252520der.jpg"]];
    [self.vw5 loadImageFromURL:[NSURL URLWithString:@"http://lh4.ggpht.com/-2xy7jhvYs1w/T7MUxOYcotI/AAAAAAAAZzU/o_JuUoqnDyc/s144-p/abb.jpg"]];
    [self.vw6 loadImageFromURL:[NSURL URLWithString:@"http://lh6.ggpht.com/-ieFscqboZOM/TIepc6wntpI/AAAAAAAAAZA/vGELwNvh40E/s144-p/LR_MG_9972.jpg"]];
    [self.vw7 loadImageFromURL:[NSURL URLWithString:@"http://lh4.ggpht.com/-jP8bVRxChkc/TtrqhtczagI/AAAAAAAAE9k/QVEe9WARd20/s144-p/Great%252520Blue%252520Heron.jpg"]];
    [self.vw8 loadImageFromURL:[NSURL URLWithString:@"http://lh5.ggpht.com/-9NUUr7TgTSA/TmnboR66NQI/AAAAAAAAATg/NPSgNsMLn5g/s144-p/methoni%252520mpourtzi%252520sunset%252520land1_reedit.jpg"]];
    [self.vw9 loadImageFromURL:[NSURL URLWithString:@"http://lh3.ggpht.com/-fBvFbsHZNQ4/T7wFN3YfipI/AAAAAAAAVMQ/834bZCfqA7Y/s144-p/DSC_1903.jpg"]];
    [self.vw10 loadImageFromURL:[NSURL URLWithString:@"http://lh3.ggpht.com/-AoWseSQazzA/T7uyPUoenqI/AAAAAAAABIw/MY_OiVZOkNk/s144-p/Yuki_2012_05_21_999_47.JPG"]];
    [self.vw11 loadImageFromURL:[NSURL URLWithString:@"http://lh4.ggpht.com/-GWNom_UVW3Y/T7cEzS27_0I/AAAAAAAAAC8/vZWhnImvg0g/s144-p/Zixpk_HD_Wallpaper_230-2.jpg"]];
    [self.vw12 loadImageFromURL:[NSURL URLWithString:@"http://d1xzuxjlafny7l.cloudfront.net/wp-content/uploads/2012/04/iCloudTutorial-282x320.jpg"]];
    
    [self.vw13 loadImageFromURL:[NSURL URLWithString:@"http://lh5.ggpht.com/-9NUUr7TgTSA/TmnboR66NQI/AAAAAAAAATg/NPSgNsMLn5g/s144-p/methoni%252520mpourtzi%252520sunset%252520land1_reedit.jpg"]];
    [self.vw14 loadImageFromURL:[NSURL URLWithString:@"http://lh3.ggpht.com/-fBvFbsHZNQ4/T7wFN3YfipI/AAAAAAAAVMQ/834bZCfqA7Y/s144-p/DSC_1903.jpg"]];
    [self.vw15 loadImageFromURL:[NSURL URLWithString:@"http://lh3.ggpht.com/-AoWseSQazzA/T7uyPUoenqI/AAAAAAAABIw/MY_OiVZOkNk/s144-p/Yuki_2012_05_21_999_47.JPG"]];
    [self.vw16 loadImageFromURL:[NSURL URLWithString:@"http://lh4.ggpht.com/-GWNom_UVW3Y/T7cEzS27_0I/AAAAAAAAAC8/vZWhnImvg0g/s144-p/Zixpk_HD_Wallpaper_230-2.jpg"]];
    [self.vw17 loadImageFromURL:[NSURL URLWithString:@"http://d1xzuxjlafny7l.cloudfront.net/wp-content/uploads/2012/04/iCloudTutorial-282x320.jpg"]];
    
    [self.vw18 loadImageFromURL:[NSURL URLWithString:@"http://d1xzuxjlafny7l.cloudfront.net/wp-content/uploads/2012/04/iCloudTutorial-282x320.jpg"]];
    
    [self.vw19 loadImageFromURL:[NSURL URLWithString:@"http://d1xzuxjlafny7l.cloudfront.net/wp-content/uploads/2012/04/iCloudTutorial-282x320.jpg"]];
    
    [self.vw20 loadImageFromURL:[NSURL URLWithString:@"http://www.nasa.gov/images/content/112412main_112412main_image_feature_30.jpg"]];
    
    [self.vw21 loadImageFromURL:[NSURL URLWithString:@"http://d1xzuxjlafny7l.cloudfront.net/wp-content/uploads/2012/04/iCloudTutorial-282x320.jpg"]];
    
    [self.vw22 loadImageFromURL:[NSURL URLWithString:@"http://d1xzuxjlafny7l.cloudfront.net/wp-content/uploads/2012/04/iCloudTutorial-282x320.jpg"]];
    
    [self.vw23 loadImageFromURL:[NSURL URLWithString:@"http://www.nasa.gov/images/content/205924main_eaglefairy_100.jpg"]];
    [self.vw24 loadImageFromURL:[NSURL URLWithString:@"http://www.nasa.gov/images/content/205924main_eaglefairy_100.jpg"]];
    [self.vw25 loadImageFromURL:[NSURL URLWithString:@"http://www.nasa.gov/images/content/205924main_eaglefairy_100.jpg"]];
    [self.vw26 loadImageFromURL:[NSURL URLWithString:@"http://www.nasa.gov/images/content/205924main_eaglefairy_100.jpg"]];
    [self.vw27 loadImageFromURL:[NSURL URLWithString:@"http://www.nasa.gov/images/content/205924main_eaglefairy_100.jpg"]];
    [self.vw28 loadImageFromURL:[NSURL URLWithString:@"http://www.nasa.gov/images/content/205924main_eaglefairy_100.jpg"]];
    [self.vw29 loadImageFromURL:[NSURL URLWithString:@"http://lh4.ggpht.com/-BFR3ZR9jtq4/T7bgG-5WKaI/AAAAAAAACk8/gC4A8Ngaf3A/s144-p/DSC_5538.jpg"]];
    [self.vw30 loadImageFromURL:[NSURL URLWithString:@"http://lh4.ggpht.com/-tO-0VjzYrBs/T7QIbR_uSeI/AAAAAAAAAeA/-yjsjzbqiwY/s144-p/DSC_3523_HDR.jpg"]];
    [self.vw31 loadImageFromURL:[NSURL URLWithString:@"http://lh6.ggpht.com/-ywhqFY8A9Mo/Tqy3C1x6DRI/AAAAAAAAFoc/1geHZtG32HM/s144-p/_DSC2729-Edit_1150.jpg"]];
    [self.vw32 loadImageFromURL:[NSURL URLWithString:@"http://lh3.ggpht.com/-awH1ilcwyXk/T56ViaVL5KI/AAAAAAAAGU4/nCDQeuhQqf8/s144-p/2012-RvK-10-China-01708%252528_VK11518%252529E01.jpg"]];
    [self.vw33 loadImageFromURL:[NSURL URLWithString:@"http://lh3.ggpht.com/-BIEX4Kia-Mw/TvuLVvpF6PI/AAAAAAAAGtM/4SRo2IXRMDM/s144-p/henrikj_080520_6301%252520-%252520der%252520-%252520der.jpg"]];
    [self.vw34 loadImageFromURL:[NSURL URLWithString:@"http://lh4.ggpht.com/-2xy7jhvYs1w/T7MUxOYcotI/AAAAAAAAZzU/o_JuUoqnDyc/s144-p/abb.jpg"]];
    [self.vw35 loadImageFromURL:[NSURL URLWithString:@"http://lh6.ggpht.com/-ieFscqboZOM/TIepc6wntpI/AAAAAAAAAZA/vGELwNvh40E/s144-p/LR_MG_9972.jpg"]];
    [self.vw36 loadImageFromURL:[NSURL URLWithString:@"http://lh5.ggpht.com/-9NUUr7TgTSA/TmnboR66NQI/AAAAAAAAATg/NPSgNsMLn5g/s144-p/methoni%252520mpourtzi%252520sunset%252520land1_reedit.jpg"]];
    [self.vw37 loadImageFromURL:[NSURL URLWithString:@"http://lh3.ggpht.com/-fBvFbsHZNQ4/T7wFN3YfipI/AAAAAAAAVMQ/834bZCfqA7Y/s144-p/DSC_1903.jpg"]];
    [self.vw38 loadImageFromURL:[NSURL URLWithString:@"http://lh3.ggpht.com/-AoWseSQazzA/T7uyPUoenqI/AAAAAAAABIw/MY_OiVZOkNk/s144-p/Yuki_2012_05_21_999_47.JPG"]];
    [self.vw11 loadImageFromURL:[NSURL URLWithString:@"http://lh4.ggpht.com/-GWNom_UVW3Y/T7cEzS27_0I/AAAAAAAAAC8/vZWhnImvg0g/s144-p/Zixpk_HD_Wallpaper_230-2.jpg"]];
    //load thumbnail image from bundle
    [self.vw39 loadImageFromURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"nature" ofType:@"png"]] thumbnail:YES];
    
    
}

- (void)viewDidUnload
{
    [self setVw0:nil];
    [self setVw1:nil];
    [self setVw2:nil];
    [self setVw3:nil];
    [self setVw4:nil];
    [self setVw5:nil];
    [self setVw6:nil];
    [self setVw7:nil];
    [self setVw8:nil];
    [self setVw9:nil];
    [self setVw10:nil];
    [self setVw11:nil];
    [self setVw12:nil];
    [self setVw13:nil];
    [self setVw14:nil];
    [self setVw15:nil];
    [self setVw16:nil];
    [self setVw17:nil];
    [self setVw18:nil];
    [self setVw19:nil];
    [self setVw20:nil];
    [self setVw21:nil];
    [self setVw22:nil];
    [self setVw23:nil];
    [self setVw24:nil];
    [self setVw25:nil];
    [self setVw26:nil];
    [self setVw27:nil];
    [self setVw28:nil];
    [self setVw29:nil];
    [self setVw30:nil];
    [self setVw31:nil];
    [self setVw32:nil];
    [self setVw33:nil];
    [self setVw34:nil];
    [self setVw35:nil];
    [self setVw36:nil];
    [self setVw37:nil];
    [self setVw38:nil];
    [self setVw39:nil];
    [self setScroll:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    //return (interfaceOrientation == UIInterfaceOrientationPortrait);
    return  YES;
}

- (void)dealloc {
    [vw0 release];
    [vw1 release];
    [vw2 release];
    [vw3 release];
    [vw4 release];
    [vw5 release];
    [vw6 release];
    [vw7 release];
    [vw8 release];
    [vw9 release];
    [vw10 release];
    [vw11 release];
    [vw12 release];
    [vw13 release];
    [vw14 release];
    [vw15 release];
    [vw16 release];
    [vw17 release];
    [vw18 release];
    [vw19 release];
    [vw20 release];
    [vw21 release];
    [vw22 release];
    [vw23 release];
    [vw24 release];
    [vw25 release];
    [vw26 release];
    [vw27 release];
    [vw28 release];
    [vw29 release];
    [vw30 release];
    [vw31 release];
    [vw32 release];
    [vw33 release];
    [vw34 release];
    [vw35 release];
    [vw36 release];
    [vw37 release];
    [vw38 release];
    [vw39 release];
    [scroll release];
    [super dealloc];
}

@end
