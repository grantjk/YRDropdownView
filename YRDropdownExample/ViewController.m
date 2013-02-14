//
//  ViewController.m
//  YRDropdownViewExample
//
//  Created by Eli Perkins on 1/27/12.
//  Copyright (c) 2012 One Mighty Roar. All rights reserved.
//

#import "ViewController.h"
#import "YRDropdownView.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize demoView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setDemoView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES; // (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)showInView:(id)sender {
    [YRDropdownView setDefaultTitleFontWithName:nil];
    [YRDropdownView setDefaultDetailFontWithName:nil];

    [YRDropdownView showDropdownInView:demoView
                             title:@"Warning" 
                            detail:@"Me too! I want to try a really long detail message to see how it handles the line breaks and what not. Here's to hoping it works right the first time!" 
                             image:[UIImage imageNamed:@"dropdown-alert"]
                          animated:YES
                         hideAfter:3];
}

- (IBAction)showInWindow:(id)sender {
	UIActivityIndicatorView *accessoryView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
	[accessoryView startAnimating];

    [YRDropdownView setDefaultTitleFontWithName:nil];
    [YRDropdownView setDefaultDetailFontWithName:nil];

    [YRDropdownView showDropdownInView:self.view.window
								 title:@"Warning"
								detail:@"Loading"
						 accessoryView:accessoryView
							  animated:NO
							 hideAfter:0.0];
}

- (IBAction)hide:(id)sender {
    [YRDropdownView hideDropdownInView:demoView animated:YES];
}

- (IBAction)showWithCustomColors:(id)sender {
    [YRDropdownView setDefaultTitleFontWithName:@"AvenirNext-Bold"];
    [YRDropdownView setDefaultDetailFontWithName:@"AvenirNext-Medium"];
    [YRDropdownView showDropdownInView:self.view.window
                                 title:@"Error"
                                detail:@"Can't connect to the server!"
                         accessoryView:nil
                             textColor:[UIColor whiteColor]
                       textShadowColor:[UIColor blackColor]
                    backgroundTopColor:[UIColor colorWithRed:0.826 green:0.000 blue:0.000 alpha:1.000]
                 backgroundBottomColor:[UIColor colorWithRed:0.551 green:0.000 blue:0.000 alpha:1.000]
                              animated:YES
                             hideAfter:0];
}

- (IBAction)showSuccess:(id)sender {
    [YRDropdownView showDropdownInView:self.view.window
                                 title:@"Success!"
                                detail:@"It was saved!"
                         accessoryView:nil
                                 style:YRDropdownViewTypeSuccess
                              animated:YES
                             hideAfter:0];
}

- (IBAction)showNotice:(id)sender {
    [YRDropdownView showDropdownInView:self.view.window
                                 title:@"Notice!"
                                detail:@"Something interesting has happened"
                         accessoryView:nil
                                 style:YRDropdownViewTypeNotice
                              animated:YES
                             hideAfter:0];
}

- (IBAction)showError:(id)sender {
    [YRDropdownView showDropdownInView:self.view.window
                                 title:@"ERROR!"
                                detail:@"Something bad has happened"
                         accessoryView:nil
                                 style:YRDropdownViewTypeError
                              animated:YES
                             hideAfter:0];
}

@end
