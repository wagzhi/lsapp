//
//  BIDViewController.m
//  Hello World
//
//  Created by Dave Mark on 9/25/11.
//  Copyright (c) 2011 Dave Mark. All rights reserved.
//

#import "BIDViewController.h"

@implementation BIDViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setStatusTexts:nil];
    [self setNameField:nil];
    [self setNumberField:nil];
    [self setCtlSwitch:nil];
    [self setCtlButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
-(IBAction)toggleSegment:(id)sender {
    UISegmentedControl *segment =(UISegmentedControl *)sender;
    if([segment selectedSegmentIndex] == 0){
        [self toggleSegment:<#(id)#>]
    }
}

- (IBAction)buttonPressed:(UIButton *)sender {
    NSString *title=[sender titleForState:UIControlStateNormal];
    [[self statusTexts] setText: [NSString  stringWithFormat:@"%@ pressed",title]];
    
}
-(IBAction)textFieldDoneEditing:(id)sender {
    [sender resignFirstResponder];
}
-(IBAction)backgoundTap:(id)sender {
    [[self nameField] resignFirstResponder];
    [[self numberField] resignFirstResponder];
}
-(IBAction)slideMoved:(id)sender {
    UISlider *slider=(UISlider *)sender;
    int sliderValue=(int)roundf(slider.value);
    UITextField *numField=(UITextField *)[self numberField];
    numField.text=[NSString stringWithFormat:@"%d",sliderValue];
}
@end
