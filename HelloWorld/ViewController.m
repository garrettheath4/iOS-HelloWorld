//
//  ViewController.m
//  HelloWorld
//
//  Created by Garrett Koller on 4/24/12.
//  Copyright (c) 2012 Washington and Lee University. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize label;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)pushButton:(id)sender {
    if ([label.text isEqualToString:@""]) {
        label.text = @"Hellow orld!";
//        UIButton *but = (UIButton*) sender;
//        but.titleLabel.text = @"Tap Me Again";
        [sender setTitle:@"Tap Me Again" forState:UIControlStateNormal];
    } else {
        label.text = @"";
    }
}
@end
